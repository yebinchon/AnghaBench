
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEAM_BLUE ;
 int TEAM_RED ;
 int TEAM_SPECTATOR ;

const char *OtherTeamName(int team) {
 if (team==TEAM_RED)
  return "BLUE";
 else if (team==TEAM_BLUE)
  return "RED";
 else if (team==TEAM_SPECTATOR)
  return "SPECTATOR";
 return "FREE";
}
