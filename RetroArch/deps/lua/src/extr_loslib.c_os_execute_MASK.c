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
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4 (lua_State *L) {
  const char *cmd = FUNC1(L, 1, NULL);
  int stat = FUNC3(cmd);
  if (cmd != NULL)
    return FUNC0(L, stat);
  else {
    FUNC2(L, stat);  /* true if there is a shell */
    return 1;
  }
}