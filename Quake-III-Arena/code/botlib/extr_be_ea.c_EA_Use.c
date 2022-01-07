
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int actionflags; } ;
typedef TYPE_1__ bot_input_t ;


 int ACTION_USE ;
 TYPE_1__* botinputs ;

void EA_Use(int client)
{
 bot_input_t *bi;

 bi = &botinputs[client];

 bi->actionflags |= ACTION_USE;
}
