#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int sign; } ;
typedef  TYPE_1__ mp_int ;

/* Variables and functions */
 scalar_t__ MP_LT ; 
 int MP_NEG ; 
 int MP_ZPOS ; 
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static int 
FUNC3 (mp_int * a, mp_int * b, mp_int * c)
{
  int     sa, sb, res;

  sa = a->sign;
  sb = b->sign;

  if (sa != sb) {
    /* subtract a negative from a positive, OR */
    /* subtract a positive from a negative. */
    /* In either case, ADD their magnitudes, */
    /* and use the sign of the first number. */
    c->sign = sa;
    res = FUNC1 (a, b, c);
  } else {
    /* subtract a positive from a positive, OR */
    /* subtract a negative from a negative. */
    /* First, take the difference between their */
    /* magnitudes, then... */
    if (FUNC0 (a, b) != MP_LT) {
      /* Copy the sign from the first */
      c->sign = sa;
      /* The first has a larger or equal magnitude */
      res = FUNC2 (a, b, c);
    } else {
      /* The result has the *opposite* sign from */
      /* the first number. */
      c->sign = (sa == MP_ZPOS) ? MP_NEG : MP_ZPOS;
      /* The second has a larger magnitude */
      res = FUNC2 (b, a, c);
    }
  }
  return res;
}