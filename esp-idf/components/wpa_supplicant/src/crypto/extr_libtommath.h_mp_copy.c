
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int alloc; int used; int sign; int * dp; } ;
typedef TYPE_1__ mp_int ;
typedef int mp_digit ;


 int MP_OKAY ;
 int mp_grow (TYPE_1__*,int) ;

__attribute__((used)) static int
mp_copy (mp_int * a, mp_int * b)
{
  int res, n;


  if (a == b) {
    return MP_OKAY;
  }


  if (b->alloc < a->used) {
     if ((res = mp_grow (b, a->used)) != MP_OKAY) {
        return res;
     }
  }


  {
    register mp_digit *tmpa, *tmpb;




    tmpa = a->dp;


    tmpb = b->dp;


    for (n = 0; n < a->used; n++) {
      *tmpb++ = *tmpa++;
    }


    for (; n < b->used; n++) {
      *tmpb++ = 0;
    }
  }


  b->used = a->used;
  b->sign = a->sign;
  return MP_OKAY;
}
