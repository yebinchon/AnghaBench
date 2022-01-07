
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_1__ ;


struct TYPE_38__ {int sign; } ;
typedef TYPE_1__ mp_int ;


 scalar_t__ MP_GT ;
 scalar_t__ MP_LT ;
 int MP_NEG ;
 int MP_OKAY ;
 int MP_VAL ;
 int MP_YES ;
 int MP_ZPOS ;
 int mp_abs (TYPE_1__*,TYPE_1__*) ;
 int mp_add (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int mp_clear_multi (TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,int *) ;
 scalar_t__ mp_cmp (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ mp_cmp_mag (TYPE_1__*,TYPE_1__*) ;
 int mp_copy (TYPE_1__*,TYPE_1__*) ;
 int mp_count_bits (TYPE_1__*) ;
 int mp_div_2d (TYPE_1__*,int,TYPE_1__*,int *) ;
 int mp_exch (TYPE_1__*,TYPE_1__*) ;
 int mp_init_multi (TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,int *) ;
 int mp_iszero (TYPE_1__*) ;
 int mp_mul_2d (TYPE_1__*,int,TYPE_1__*) ;
 int mp_set (TYPE_1__*,int) ;
 int mp_sub (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int mp_zero (TYPE_1__*) ;

__attribute__((used)) static int
mp_div(mp_int * a, mp_int * b, mp_int * c, mp_int * d)
{
   mp_int ta, tb, tq, q;
   int res, n, n2;


  if (mp_iszero (b) == 1) {
    return MP_VAL;
  }


  if (mp_cmp_mag (a, b) == MP_LT) {
    if (d != ((void*)0)) {
      res = mp_copy (a, d);
    } else {
      res = MP_OKAY;
    }
    if (c != ((void*)0)) {
      mp_zero (c);
    }
    return res;
  }


  if ((res = mp_init_multi(&ta, &tb, &tq, &q, ((void*)0)) != MP_OKAY)) {
     return res;
  }


  mp_set(&tq, 1);
  n = mp_count_bits(a) - mp_count_bits(b);
  if (((res = mp_abs(a, &ta)) != MP_OKAY) ||
      ((res = mp_abs(b, &tb)) != MP_OKAY) ||
      ((res = mp_mul_2d(&tb, n, &tb)) != MP_OKAY) ||
      ((res = mp_mul_2d(&tq, n, &tq)) != MP_OKAY)) {
      goto LBL_ERR;
  }

  while (n-- >= 0) {
     if (mp_cmp(&tb, &ta) != MP_GT) {
        if (((res = mp_sub(&ta, &tb, &ta)) != MP_OKAY) ||
            ((res = mp_add(&q, &tq, &q)) != MP_OKAY)) {
           goto LBL_ERR;
        }
     }
     if (((res = mp_div_2d(&tb, 1, &tb, ((void*)0))) != MP_OKAY) ||
         ((res = mp_div_2d(&tq, 1, &tq, ((void*)0))) != MP_OKAY)) {
           goto LBL_ERR;
     }
  }


  n = a->sign;
  n2 = (a->sign == b->sign ? MP_ZPOS : MP_NEG);
  if (c != ((void*)0)) {
     mp_exch(c, &q);
     c->sign = (mp_iszero(c) == MP_YES) ? MP_ZPOS : n2;
  }
  if (d != ((void*)0)) {
     mp_exch(d, &ta);
     d->sign = (mp_iszero(d) == MP_YES) ? MP_ZPOS : n;
  }
LBL_ERR:
   mp_clear_multi(&ta, &tb, &tq, &q, ((void*)0));
   return res;
}
