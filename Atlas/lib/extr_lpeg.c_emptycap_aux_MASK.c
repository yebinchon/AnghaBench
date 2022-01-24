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
 int /*<<< orphan*/  IEmptyCapture ; 
 int SHRT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4 (lua_State *L, int kind, const char *msg) {
  int n = FUNC1(L, 1);
  Instruction *p = FUNC2(L, 1);
  FUNC0(L, 0 < n && n <= SHRT_MAX, 1, msg);
  FUNC3(p, IEmptyCapture, n, kind, 0);
  return 1;
}