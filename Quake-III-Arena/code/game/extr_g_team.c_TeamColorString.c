
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* S_COLOR_BLUE ;
 char const* S_COLOR_RED ;
 char const* S_COLOR_WHITE ;
 char const* S_COLOR_YELLOW ;
 int TEAM_BLUE ;
 int TEAM_RED ;
 int TEAM_SPECTATOR ;

const char *TeamColorString(int team) {
 if (team==TEAM_RED)
  return S_COLOR_RED;
 else if (team==TEAM_BLUE)
  return S_COLOR_BLUE;
 else if (team==TEAM_SPECTATOR)
  return S_COLOR_YELLOW;
 return S_COLOR_WHITE;
}
