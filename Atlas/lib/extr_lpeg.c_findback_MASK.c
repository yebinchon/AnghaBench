#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  L; int /*<<< orphan*/ * ocap; } ;
typedef  int /*<<< orphan*/  Capture ;
typedef  TYPE_1__ CapState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static Capture *FUNC5 (CapState *cs, Capture *cap, int n) {
  int i;
  for (i = 0; i < n; i++) {
    if (cap == cs->ocap)
      FUNC4(cs->L, "invalid back reference (%d)", n);
    cap--;
    if (FUNC2(cap))
      cap = FUNC1(cap);
    else if (!FUNC3(cap))
      i--;  /* does not count enclosing captures */
  }
  FUNC0(!FUNC2(cap));
  return cap;
}