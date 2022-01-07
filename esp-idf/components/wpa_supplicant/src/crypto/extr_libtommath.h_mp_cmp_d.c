
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sign; int used; scalar_t__* dp; } ;
typedef TYPE_1__ mp_int ;
typedef scalar_t__ mp_digit ;


 int MP_EQ ;
 int MP_GT ;
 int MP_LT ;
 scalar_t__ MP_NEG ;

__attribute__((used)) static int
mp_cmp_d(mp_int * a, mp_digit b)
{

  if (a->sign == MP_NEG) {
    return MP_LT;
  }


  if (a->used > 1) {
    return MP_GT;
  }


  if (a->dp[0] > b) {
    return MP_GT;
  } else if (a->dp[0] < b) {
    return MP_LT;
  } else {
    return MP_EQ;
  }
}
