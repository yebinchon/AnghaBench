
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ainode; } ;
typedef TYPE_1__ bot_state_t ;


 int AINode_Battle_NBG ;
 int BotRecordNodeSwitch (TYPE_1__*,char*,char*,char*) ;

void AIEnter_Battle_NBG(bot_state_t *bs, char *s) {
 BotRecordNodeSwitch(bs, "battle NBG", "", s);
 bs->ainode = AINode_Battle_NBG;
}
