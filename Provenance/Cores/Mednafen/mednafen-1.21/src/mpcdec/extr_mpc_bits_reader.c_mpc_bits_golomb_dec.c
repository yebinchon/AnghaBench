
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int mpc_uint_t ;
typedef unsigned int mpc_int32_t ;
struct TYPE_3__ {int* buff; int count; } ;
typedef TYPE_1__ mpc_bits_reader ;



mpc_int32_t mpc_bits_golomb_dec(mpc_bits_reader * r, const mpc_uint_t k)
{
 unsigned int l = 0;
 unsigned int code = r->buff[0] & ((1 << r->count) - 1);

 while( code == 0 ) {
  l += r->count;
  r->buff++;
  code = r->buff[0];
  r->count = 8;
 }

 while( ((1 << (r->count - 1)) & code) == 0 ) {
  l++;
  r->count--;
 }
 r->count--;

 while( r->count < k ) {
  r->buff++;
  r->count += 8;
  code = (code << 8) | r->buff[0];
 }

 r->count -= k;

 return (l << k) | ((code >> r->count) & ((1 << k) - 1));
}
