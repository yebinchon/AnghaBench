
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ainode; int ms; } ;
typedef TYPE_1__ bot_state_t ;


 int AINode_Battle_Fight ;
 int BotRecordNodeSwitch (TYPE_1__*,char*,char*,char*) ;
 int trap_BotResetLastAvoidReach (int ) ;

void AIEnter_Battle_Fight(bot_state_t *bs, char *s) {
 BotRecordNodeSwitch(bs, "battle fight", "", s);
 trap_BotResetLastAvoidReach(bs->ms);
 bs->ainode = AINode_Battle_Fight;
}
