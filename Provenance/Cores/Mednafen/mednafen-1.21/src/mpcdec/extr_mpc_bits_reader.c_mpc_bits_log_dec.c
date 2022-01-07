
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_uint_t ;
typedef int mpc_uint32_t ;
typedef int mpc_bits_reader ;


 int* log2_lost ;
 int* log2_tab ;
 int mpc_bits_read (int *,int) ;

mpc_uint32_t mpc_bits_log_dec(mpc_bits_reader * r, mpc_uint_t max)
{
 mpc_uint32_t value = 0;
 if (max == 0)
  return 0;
 if (log2_tab[max - 1] > 1)
  value = mpc_bits_read(r, log2_tab[max - 1] - 1);
 if (value >= log2_lost[max - 1])
  value = ((value << 1) | mpc_bits_read(r, 1)) - log2_lost[max - 1];
 return value;
}
