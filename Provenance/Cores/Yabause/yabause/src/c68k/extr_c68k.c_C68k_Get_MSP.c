
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int USP; int * A; scalar_t__ flag_S; } ;
typedef TYPE_1__ c68k_struc ;



u32 C68k_Get_MSP(c68k_struc *cpu)
{
    if (cpu->flag_S) return cpu->A[7];
    else return cpu->USP;
}
