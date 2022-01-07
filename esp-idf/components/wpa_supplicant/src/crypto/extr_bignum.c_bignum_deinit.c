
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bignum {int dummy; } ;
typedef int mp_int ;


 int mp_clear (int *) ;
 int os_free (struct bignum*) ;

void
bignum_deinit(struct bignum *n)
{
 if (n) {
  mp_clear((mp_int *) n);
  os_free(n);
 }
}
