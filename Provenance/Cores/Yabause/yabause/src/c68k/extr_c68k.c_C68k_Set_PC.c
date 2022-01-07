
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {scalar_t__ BasePC; scalar_t__ PC; scalar_t__* Fetch; } ;
typedef TYPE_1__ c68k_struc ;


 size_t C68K_FETCH_MASK ;
 size_t C68K_FETCH_SFT ;

void C68k_Set_PC(c68k_struc *cpu, u32 val)
{
    cpu->BasePC = cpu->Fetch[(val >> C68K_FETCH_SFT) & C68K_FETCH_MASK];
    cpu->PC = val + cpu->BasePC;
}
