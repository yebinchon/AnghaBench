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

/* Variables and functions */
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/ * globalL ; 
 int /*<<< orphan*/  laction ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  msghandler ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6 (lua_State *L, int narg, int nres) {
  int status;
  int base = FUNC0(L) - narg;  /* function index */
  FUNC3(L, msghandler);  /* push message handler */
  FUNC1(L, base);  /* put it under function and args */
  globalL = L;  /* to be available to 'laction' */
  FUNC5(SIGINT, laction);  /* set C-signal handler */
  status = FUNC2(L, narg, nres, base);
  FUNC5(SIGINT, SIG_DFL); /* reset C-signal handler */
  FUNC4(L, base);  /* remove message handler from the stack */
  return status;
}