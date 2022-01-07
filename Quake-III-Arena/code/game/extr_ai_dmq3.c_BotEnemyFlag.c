
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bot_state_t ;
typedef int bot_goal_t ;


 scalar_t__ BotTeam (int *) ;
 scalar_t__ TEAM_RED ;
 int ctf_blueflag ;
 int ctf_redflag ;

bot_goal_t *BotEnemyFlag(bot_state_t *bs) {
 if (BotTeam(bs) == TEAM_RED) {
  return &ctf_blueflag;
 }
 else {
  return &ctf_redflag;
 }
}
