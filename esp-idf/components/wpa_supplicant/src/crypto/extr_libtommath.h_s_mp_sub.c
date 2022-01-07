
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int used; int alloc; int* dp; } ;
typedef TYPE_1__ mp_int ;
typedef int mp_digit ;


 int CHAR_BIT ;
 int MP_MASK ;
 int MP_OKAY ;
 int mp_clamp (TYPE_1__*) ;
 int mp_grow (TYPE_1__*,int) ;

__attribute__((used)) static int
s_mp_sub (mp_int * a, mp_int * b, mp_int * c)
{
  int olduse, res, min, max;


  min = b->used;
  max = a->used;


  if (c->alloc < max) {
    if ((res = mp_grow (c, max)) != MP_OKAY) {
      return res;
    }
  }
  olduse = c->used;
  c->used = max;

  {
    register mp_digit u, *tmpa, *tmpb, *tmpc;
    register int i;


    tmpa = a->dp;
    tmpb = b->dp;
    tmpc = c->dp;


    u = 0;
    for (i = 0; i < min; i++) {

      *tmpc = *tmpa++ - *tmpb++ - u;






      u = *tmpc >> ((mp_digit)(CHAR_BIT * sizeof (mp_digit) - 1));


      *tmpc++ &= MP_MASK;
    }


    for (; i < max; i++) {

      *tmpc = *tmpa++ - u;


      u = *tmpc >> ((mp_digit)(CHAR_BIT * sizeof (mp_digit) - 1));


      *tmpc++ &= MP_MASK;
    }


    for (i = c->used; i < olduse; i++) {
      *tmpc++ = 0;
    }
  }

  mp_clamp (c);
  return MP_OKAY;
}
