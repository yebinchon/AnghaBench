
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ m68k_reg ;
typedef int m68k_info ;


 int add_reg_to_rw_list (int *,scalar_t__,int) ;

__attribute__((used)) static void update_bits_range(m68k_info *info, m68k_reg reg_start, uint8_t bits, int write)
{
 int i;

 for (i = 0; i < 8; ++i) {
  if (bits & (1 << i)) {
   add_reg_to_rw_list(info, reg_start + i, write);
  }
 }
}
