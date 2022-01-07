
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_int ;


 int MP_OKAY ;
 int mp_clear (int *) ;
 int mp_init (int *) ;
 int mp_mod (int *,int *,int *) ;
 int mp_mul (int *,int *,int *) ;

__attribute__((used)) static int
mp_mulmod (mp_int * a, mp_int * b, mp_int * c, mp_int * d)
{
  int res;
  mp_int t;

  if ((res = mp_init (&t)) != MP_OKAY) {
    return res;
  }

  if ((res = mp_mul (a, b, &t)) != MP_OKAY) {
    mp_clear (&t);
    return res;
  }
  res = mp_mod (&t, c, d);
  mp_clear (&t);
  return res;
}
