
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEAM_BLUE ;
 int TEAM_RED ;

int OtherTeam(int team) {
 if (team==TEAM_RED)
  return TEAM_BLUE;
 else if (team==TEAM_BLUE)
  return TEAM_RED;
 return team;
}
