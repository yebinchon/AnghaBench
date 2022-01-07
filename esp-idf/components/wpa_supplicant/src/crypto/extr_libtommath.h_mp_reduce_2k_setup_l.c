
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_int ;


 int MP_OKAY ;
 int mp_2expt (int *,int ) ;
 int mp_clear (int *) ;
 int mp_count_bits (int *) ;
 int mp_init (int *) ;
 int s_mp_sub (int *,int *,int *) ;

__attribute__((used)) static int
mp_reduce_2k_setup_l(mp_int *a, mp_int *d)
{
   int res;
   mp_int tmp;

   if ((res = mp_init(&tmp)) != MP_OKAY) {
      return res;
   }

   if ((res = mp_2expt(&tmp, mp_count_bits(a))) != MP_OKAY) {
      goto ERR;
   }

   if ((res = s_mp_sub(&tmp, a, d)) != MP_OKAY) {
      goto ERR;
   }

ERR:
   mp_clear(&tmp);
   return res;
}
