
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * Write_Byte; } ;
typedef TYPE_1__ c68k_struc ;
typedef int C68K_WRITE ;



void C68k_Set_WriteB(c68k_struc *cpu, C68K_WRITE *Func)
{
    cpu->Write_Byte = Func;
}
