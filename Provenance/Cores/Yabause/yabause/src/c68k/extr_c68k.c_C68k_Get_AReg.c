
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {size_t* A; } ;
typedef TYPE_1__ c68k_struc ;



u32 C68k_Get_AReg(c68k_struc *cpu, u32 num)
{
    return cpu->A[num];
}
