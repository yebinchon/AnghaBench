#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ code; int aux; } ;
struct TYPE_14__ {TYPE_1__ i; } ;
typedef  TYPE_2__ Instruction ;

/* Variables and functions */
 scalar_t__ IEnd ; 
 int MAXOFF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*,int) ; 
 int FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int,int) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 int FUNC9 (TYPE_2__*,int,int*) ; 

__attribute__((used)) static void FUNC10 (Instruction *p) {
  int i;
  int limit = 0;
  for (i = 0; p[i].i.code != IEnd; i += FUNC8(p + i)) {
    if (FUNC5(p + i) && FUNC1(p, i) >= limit)
      limit = FUNC1(p, i) + 1;  /* do not optimize jump targets */
    else if (i >= limit && FUNC6(p + i) && FUNC4(p + i + 1)) {
      int end, n, j;  /* found a border capture|check */
      int maxoff = FUNC2(p + i);
      int start = i;
      /* find first capture in the group */
      while (start > limit && FUNC6(p + start - 1)) {
        start--;
        if (FUNC2(p + start) > maxoff) maxoff = FUNC2(p + start);
      }
      end = FUNC9(p + i + 1, maxoff, &n) + i;  /* find last check */
      if (n == 0) continue;  /* first check is too big to move across */
      FUNC0(n <= MAXOFF && start <= i && i < end);
      for (j = start; j <= i; j++)
        p[j].i.aux += (n << 4);  /* correct offset of captures to be moved */
      FUNC7(p + start, end - start, i - start + 1);  /* move them up */
      i = end;
      FUNC0(FUNC4(p + start) && FUNC3(p + i));
    }
  }
}