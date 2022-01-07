
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int M68K_REG_USP ;
 int m68k_get_reg (int *,int ) ;

__attribute__((used)) static u32 M68KMusashiGetUSP(void) {
   return m68k_get_reg(((void*)0), M68K_REG_USP);
}
