
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ flags; scalar_t__ traveltype; scalar_t__ blockentity; void* blocked; scalar_t__ type; void* failure; } ;
typedef TYPE_1__ bot_moveresult_t ;


 void* qfalse ;

void BotClearMoveResult(bot_moveresult_t *moveresult)
{
 moveresult->failure = qfalse;
 moveresult->type = 0;
 moveresult->blocked = qfalse;
 moveresult->blockentity = 0;
 moveresult->traveltype = 0;
 moveresult->flags = 0;
}
