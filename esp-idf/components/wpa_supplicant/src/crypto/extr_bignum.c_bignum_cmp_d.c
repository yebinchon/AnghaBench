
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bignum {int dummy; } ;
typedef int mp_int ;


 int mp_cmp_d (int *,unsigned long) ;

int
bignum_cmp_d(const struct bignum *a, unsigned long b)
{
 return mp_cmp_d((mp_int *) a, b);
}
