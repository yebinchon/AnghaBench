
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int C68K ;
 int C68k_Get_PC (int *) ;

__attribute__((used)) static u32 M68KC68KGetPC(void) {
 return C68k_Get_PC(&C68K);
}
