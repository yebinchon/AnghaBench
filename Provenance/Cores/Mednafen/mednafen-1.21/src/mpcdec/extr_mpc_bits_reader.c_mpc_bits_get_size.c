
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_uint64_t ;
typedef int mpc_bits_reader ;


 unsigned char mpc_bits_read (int *,int) ;

unsigned int mpc_bits_get_size(mpc_bits_reader * r, mpc_uint64_t * p_size)
{
 unsigned char tmp;
 mpc_uint64_t size = 0;
 unsigned int ret = 0;

 do {
  tmp = mpc_bits_read(r, 8);
  size = (size << 7) | (tmp & 0x7F);
  ret++;
 } while((tmp & 0x80));

 *p_size = size;
 return ret;
}
