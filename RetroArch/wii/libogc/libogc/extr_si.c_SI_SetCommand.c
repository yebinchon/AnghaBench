
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 int * _siReg ;

void SI_SetCommand(s32 chan,u32 cmd)
{
 _siReg[chan*3] = cmd;
}
