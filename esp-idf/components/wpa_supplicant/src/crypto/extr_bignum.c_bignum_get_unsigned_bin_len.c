
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bignum {int dummy; } ;
typedef int mp_int ;


 size_t mp_unsigned_bin_size (int *) ;

size_t
bignum_get_unsigned_bin_len(struct bignum *n)
{
 return mp_unsigned_bin_size((mp_int *) n);
}
