
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int actionflags; scalar_t__ speed; int dir; scalar_t__ thinktime; } ;
typedef TYPE_1__ bot_input_t ;


 int ACTION_JUMP ;
 int ACTION_JUMPEDLASTFRAME ;
 int VectorClear (int ) ;
 TYPE_1__* botinputs ;
 int qfalse ;

void EA_ResetInput(int client)
{
 bot_input_t *bi;
 int jumped = qfalse;

 bi = &botinputs[client];
 bi->actionflags &= ~ACTION_JUMPEDLASTFRAME;

 bi->thinktime = 0;
 VectorClear(bi->dir);
 bi->speed = 0;
 jumped = bi->actionflags & ACTION_JUMP;
 bi->actionflags = 0;
 if (jumped) bi->actionflags |= ACTION_JUMPEDLASTFRAME;
}
