
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bignum {int dummy; } ;
typedef int mp_int ;


 int mp_cmp (int *,int *) ;

int
bignum_cmp(const struct bignum *a, const struct bignum *b)
{
 return mp_cmp((mp_int *) a, (mp_int *) b);
}
