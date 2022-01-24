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
 int ERRLIB ; 
 char* LIB_FAIL ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC5 (lua_State *L) {
  const char *path = FUNC1(L, 1);
  const char *init = FUNC1(L, 2);
  int stat = FUNC0(L, path, init);
  if (stat == 0)  /* no errors? */
    return 1;  /* return the loaded function */
  else {  /* error; error message is on stack top */
    FUNC3(L);
    FUNC2(L, -2);
    FUNC4(L, (stat == ERRLIB) ?  LIB_FAIL : "init");
    return 3;  /* return nil, error message, and where */
  }
}