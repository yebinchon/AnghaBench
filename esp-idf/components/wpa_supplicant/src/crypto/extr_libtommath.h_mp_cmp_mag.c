
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int used; scalar_t__* dp; } ;
typedef TYPE_1__ mp_int ;
typedef scalar_t__ mp_digit ;


 int MP_EQ ;
 int MP_GT ;
 int MP_LT ;

__attribute__((used)) static int
mp_cmp_mag (mp_int * a, mp_int * b)
{
  int n;
  mp_digit *tmpa, *tmpb;


  if (a->used > b->used) {
    return MP_GT;
  }

  if (a->used < b->used) {
    return MP_LT;
  }


  tmpa = a->dp + (a->used - 1);


  tmpb = b->dp + (a->used - 1);


  for (n = 0; n < a->used; ++n, --tmpa, --tmpb) {
    if (*tmpa > *tmpb) {
      return MP_GT;
    }

    if (*tmpa < *tmpb) {
      return MP_LT;
    }
  }
  return MP_EQ;
}
