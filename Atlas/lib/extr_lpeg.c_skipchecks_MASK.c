#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Instruction ;

/* Variables and functions */
 int MAXOFF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3 (Instruction *p, int up, int *pn) {
  int i, n = 0;
  for (i = 0; FUNC0(p + i); i += FUNC2(p + i)) {
    int st = FUNC1(p + i);
    if (n + st > MAXOFF - up) break;
    n += st;
  }
  *pn = n;
  return i;
}