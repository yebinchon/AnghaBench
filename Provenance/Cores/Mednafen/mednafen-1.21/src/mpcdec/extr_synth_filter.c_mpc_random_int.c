
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mpc_uint32_t ;
struct TYPE_3__ {int __r1; int __r2; } ;
typedef TYPE_1__ mpc_decoder ;


 int* Parity ;

mpc_uint32_t
mpc_random_int(mpc_decoder* p_dec)
{

    mpc_uint32_t t1, t2, t3, t4;

    t3 = t1 = p_dec->__r1; t4 = t2 = p_dec->__r2;
    t1 &= 0xF5; t2 >>= 25;
    t1 = Parity[t1]; t2 &= 0x63;
    t1 <<= 31; t2 = Parity[t2];

    return (p_dec->__r1 = (t3 >> 1) | t1 ) ^ (p_dec->__r2 = (t4 + t4) | t2 );




}
