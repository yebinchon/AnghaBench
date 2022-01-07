
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ activatestack; } ;
typedef TYPE_1__ bot_state_t ;


 int BotPopFromActivateGoalStack (TYPE_1__*) ;

void BotClearActivateGoalStack(bot_state_t *bs) {
 while(bs->activatestack)
  BotPopFromActivateGoalStack(bs);
}
