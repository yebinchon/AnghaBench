#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  cap; int /*<<< orphan*/  L; } ;
typedef  TYPE_1__ CapState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5 (CapState *cs) {
  int n = 0;
  FUNC2(cs->L);
  if (FUNC1(cs->cap++))
    return 1;  /* table is empty */
  while (!FUNC0(cs->cap)) {
    int i;
    int k = FUNC4(cs);
    for (i = k; i > 0; i--)
      FUNC3(cs->L, -(i + 1), n + i);
    n += k;
  }
  cs->cap++;  /* skip close entry */
  return 1;
}