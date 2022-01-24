#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  L; int /*<<< orphan*/  ptop; TYPE_1__* cap; } ;
struct TYPE_6__ {int idx; } ;
typedef  TYPE_2__ CapState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC6 (CapState *cs) {
  int idx = cs->cap->idx;
  int n = FUNC3(cs, 0);
  if (n > 1)  /* extra captures? */
    FUNC2(cs->L, n - 1);  /* throw them away */
  FUNC5(cs, idx);
  FUNC0(cs->L, FUNC4(cs->ptop));
  if (!FUNC1(cs->L, -1))
    return 1;
  else {
    FUNC2(cs->L, 1);  /* remove value */
    return 0;
  }
}