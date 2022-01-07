
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int used; int * dp; } ;
typedef TYPE_1__ mp_int ;
typedef int mp_digit ;


 int mp_zero (TYPE_1__*) ;

__attribute__((used)) static void
mp_rshd (mp_int * a, int b)
{
  int x;


  if (b <= 0) {
    return;
  }


  if (a->used <= b) {
    mp_zero (a);
    return;
  }

  {
    register mp_digit *bottom, *top;




    bottom = a->dp;


    top = a->dp + b;
    for (x = 0; x < (a->used - b); x++) {
      *bottom++ = *top++;
    }


    for (; x < a->used; x++) {
      *bottom++ = 0;
    }
  }


  a->used -= b;
}
