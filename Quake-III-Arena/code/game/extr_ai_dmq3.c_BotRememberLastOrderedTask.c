
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int teammate; int lastgoal_teammate; int teamgoal; int lastgoal_teamgoal; int ltgtype; int lastgoal_ltgtype; int decisionmaker; int lastgoal_decisionmaker; int ordered; } ;
typedef TYPE_1__ bot_state_t ;
typedef int bot_goal_t ;


 int memcpy (int *,int *,int) ;

void BotRememberLastOrderedTask(bot_state_t *bs) {
 if (!bs->ordered) {
  return;
 }
 bs->lastgoal_decisionmaker = bs->decisionmaker;
 bs->lastgoal_ltgtype = bs->ltgtype;
 memcpy(&bs->lastgoal_teamgoal, &bs->teamgoal, sizeof(bot_goal_t));
 bs->lastgoal_teammate = bs->teammate;
}
