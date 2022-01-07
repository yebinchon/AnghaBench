
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 int * _siReg ;

u32 SI_GetCommand(s32 chan)
{
 return (_siReg[chan*3]);
}
