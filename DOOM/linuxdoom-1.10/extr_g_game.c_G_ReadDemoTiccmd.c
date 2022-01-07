
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char forwardmove; char sidemove; unsigned char angleturn; unsigned char buttons; } ;
typedef TYPE_1__ ticcmd_t ;


 scalar_t__ DEMOMARKER ;
 int G_CheckDemoStatus () ;
 scalar_t__* demo_p ;

void G_ReadDemoTiccmd (ticcmd_t* cmd)
{
    if (*demo_p == DEMOMARKER)
    {

 G_CheckDemoStatus ();
 return;
    }
    cmd->forwardmove = ((signed char)*demo_p++);
    cmd->sidemove = ((signed char)*demo_p++);
    cmd->angleturn = ((unsigned char)*demo_p++)<<8;
    cmd->buttons = (unsigned char)*demo_p++;
}
