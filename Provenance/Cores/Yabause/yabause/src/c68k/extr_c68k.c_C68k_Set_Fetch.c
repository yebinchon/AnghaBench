
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int pointer ;
struct TYPE_3__ {int* Fetch; } ;
typedef TYPE_1__ c68k_struc ;


 int C68K_FETCH_MASK ;
 int C68K_FETCH_SFT ;

void C68k_Set_Fetch(c68k_struc *cpu, u32 low_adr, u32 high_adr, pointer fetch_adr)
{
    u32 i, j;

    i = (low_adr >> C68K_FETCH_SFT) & C68K_FETCH_MASK;
    j = (high_adr >> C68K_FETCH_SFT) & C68K_FETCH_MASK;
    fetch_adr -= i << C68K_FETCH_SFT;
    while (i <= j) cpu->Fetch[i++] = fetch_adr;
}
