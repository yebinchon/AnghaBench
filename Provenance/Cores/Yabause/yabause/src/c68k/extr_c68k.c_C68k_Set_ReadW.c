
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * Read_Word; } ;
typedef TYPE_1__ c68k_struc ;
typedef int C68K_READ ;



void C68k_Set_ReadW(c68k_struc *cpu, C68K_READ *Func)
{
    cpu->Read_Word = Func;
}
