
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ M68K_REG_D0 ;
 scalar_t__ m68k_get_reg (int *,scalar_t__) ;

__attribute__((used)) static u32 M68KMusashiGetDReg(u32 num) {
   return m68k_get_reg(((void*)0), M68K_REG_D0 + num);
}
