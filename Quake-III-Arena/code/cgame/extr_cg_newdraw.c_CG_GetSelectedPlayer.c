
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ integer; } ;


 TYPE_1__ cg_currentSelectedPlayer ;
 scalar_t__ numSortedTeamPlayers ;

int CG_GetSelectedPlayer() {
 if (cg_currentSelectedPlayer.integer < 0 || cg_currentSelectedPlayer.integer >= numSortedTeamPlayers) {
  cg_currentSelectedPlayer.integer = 0;
 }
 return cg_currentSelectedPlayer.integer;
}
