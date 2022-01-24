#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ sign; } ;
typedef  TYPE_1__ mp_int ;

/* Variables and functions */
 int MP_OKAY ; 
 int FUNC0 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int 
FUNC5 (mp_int * a, mp_int * b, mp_int * c)
{
  mp_int  t;
  int     res;

  if ((res = FUNC4 (&t)) != MP_OKAY) {
    return res;
  }

  if ((res = FUNC2 (a, b, NULL, &t)) != MP_OKAY) {
    FUNC1 (&t);
    return res;
  }

  if (t.sign != b->sign) {
    res = FUNC0 (b, &t, c);
  } else {
    res = MP_OKAY;
    FUNC3 (&t, c);
  }

  FUNC1 (&t);
  return res;
}