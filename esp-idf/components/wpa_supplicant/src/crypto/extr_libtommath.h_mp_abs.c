
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sign; } ;
typedef TYPE_1__ mp_int ;


 int MP_OKAY ;
 int MP_ZPOS ;
 int mp_copy (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int
mp_abs (mp_int * a, mp_int * b)
{
  int res;


  if (a != b) {
     if ((res = mp_copy (a, b)) != MP_OKAY) {
       return res;
     }
  }


  b->sign = MP_ZPOS;

  return MP_OKAY;
}
