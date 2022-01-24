#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int alloc; int used; int* dp; } ;
typedef  TYPE_1__ mp_int ;
typedef  int mp_digit ;

/* Variables and functions */
 int DIGIT_BIT ; 
 int MP_MASK ; 
 int MP_OKAY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (TYPE_1__*,int) ; 

__attribute__((used)) static int 
FUNC4 (mp_int * a, int b, mp_int * c)
{
  mp_digit d;
  int      res;

  /* copy */
  if (a != c) {
     if ((res = FUNC1 (a, c)) != MP_OKAY) {
       return res;
     }
  }

  if (c->alloc < (int)(c->used + b/DIGIT_BIT + 1)) {
     if ((res = FUNC2 (c, c->used + b / DIGIT_BIT + 1)) != MP_OKAY) {
       return res;
     }
  }

  /* shift by as many digits in the bit count */
  if (b >= (int)DIGIT_BIT) {
    if ((res = FUNC3 (c, b / DIGIT_BIT)) != MP_OKAY) {
      return res;
    }
  }

  /* shift any bit count < DIGIT_BIT */
  d = (mp_digit) (b % DIGIT_BIT);
  if (d != 0) {
    register mp_digit *tmpc, shift, mask, r, rr;
    register int x;

    /* bitmask for carries */
    mask = (((mp_digit)1) << d) - 1;

    /* shift for msbs */
    shift = DIGIT_BIT - d;

    /* alias */
    tmpc = c->dp;

    /* carry */
    r    = 0;
    for (x = 0; x < c->used; x++) {
      /* get the higher bits of the current word */
      rr = (*tmpc >> shift) & mask;

      /* shift the current word and OR in the carry */
      *tmpc = ((*tmpc << d) | r) & MP_MASK;
      ++tmpc;

      /* set the carry to the carry bits of the current word */
      r = rr;
    }
    
    /* set final carry */
    if (r != 0) {
       c->dp[(c->used)++] = r;
    }
  }
  FUNC0 (c);
  return MP_OKAY;
}