
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bot_state_t ;


 int BotTeam (int *) ;

 int TEAM_FREE ;


int BotOppositeTeam(bot_state_t *bs) {
 switch(BotTeam(bs)) {
  case 128: return 129;
  case 129: return 128;
  default: return TEAM_FREE;
 }
}
