
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ BasePC; scalar_t__ PC; } ;
typedef TYPE_1__ c68k_struc ;



u32 C68k_Get_PC(c68k_struc *cpu)
{
    return (u32)(cpu->PC - cpu->BasePC);
}
