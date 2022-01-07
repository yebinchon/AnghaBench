
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* Fetch; scalar_t__* OPFetch; } ;
typedef TYPE_1__ cz80_struc ;
typedef int UINT32 ;
typedef int FPTR ;


 int CZ80_FETCH_SFT ;

void Cz80_Set_Fetch(cz80_struc *CPU, UINT32 low_adr, UINT32 high_adr, FPTR fetch_adr)
{
 int i, j;

 i = low_adr >> CZ80_FETCH_SFT;
 j = high_adr >> CZ80_FETCH_SFT;
 fetch_adr -= i << CZ80_FETCH_SFT;

 while (i <= j)
 {
  CPU->Fetch[i] = fetch_adr;



  i++;
 }
}
