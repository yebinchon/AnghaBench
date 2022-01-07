
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int pointer ;


 int C68K ;
 int C68k_Set_Fetch (int *,int ,int ,int ) ;

__attribute__((used)) static void M68KC68KSetFetch(u32 low_adr, u32 high_adr, pointer fetch_adr) {
 C68k_Set_Fetch(&C68K, low_adr, high_adr, fetch_adr);
}
