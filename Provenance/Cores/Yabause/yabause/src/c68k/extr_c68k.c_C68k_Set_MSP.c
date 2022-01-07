
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_3__ {void* USP; void** A; scalar_t__ flag_S; } ;
typedef TYPE_1__ c68k_struc ;



void C68k_Set_MSP(c68k_struc *cpu, u32 val)
{
    if (cpu->flag_S) cpu->A[7] = val;
    else cpu->USP = val;
}
