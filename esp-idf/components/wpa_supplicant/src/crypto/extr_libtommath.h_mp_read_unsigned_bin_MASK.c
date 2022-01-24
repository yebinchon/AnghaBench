#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int alloc; unsigned char* dp; int used; } ;
typedef  TYPE_1__ mp_int ;

/* Variables and functions */
 unsigned char const MP_MASK ; 
 int MP_OKAY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (TYPE_1__*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int 
FUNC4 (mp_int * a, const unsigned char *b, int c)
{
  int     res;

  /* make sure there are at least two digits */
  if (a->alloc < 2) {
     if ((res = FUNC1(a, 2)) != MP_OKAY) {
        return res;
     }
  }

  /* zero the int */
  FUNC3 (a);

  /* read the bytes in */
  while (c-- > 0) {
    if ((res = FUNC2 (a, 8, a)) != MP_OKAY) {
      return res;
    }

#ifndef MP_8BIT
      a->dp[0] |= *b++;
      a->used += 1;
#else
      a->dp[0] = (*b & MP_MASK);
      a->dp[1] |= ((*b++ >> 7U) & 1);
      a->used += 2;
#endif
  }
  FUNC0 (a);
  return MP_OKAY;
}