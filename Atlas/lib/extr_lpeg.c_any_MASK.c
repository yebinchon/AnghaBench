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
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  Instruction ;

/* Variables and functions */
 int /*<<< orphan*/  IAny ; 
 int UCHAR_MAX ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static Instruction *FUNC2 (lua_State *L, int n, int extra, int *offsetp) {
  int offset = offsetp ? *offsetp : 0;
  Instruction *p = FUNC0(L, (n - 1)/UCHAR_MAX + extra + 1);
  Instruction *p1 = p + offset;
  for (; n > UCHAR_MAX; n -= UCHAR_MAX)
    FUNC1(p1++, IAny, 0, UCHAR_MAX);
  FUNC1(p1++, IAny, 0, n);
  if (offsetp) *offsetp = p1 - p;
  return p;
}