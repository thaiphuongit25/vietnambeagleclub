# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, :all
    cannot %i[destroy], AdminUser
  end
end
