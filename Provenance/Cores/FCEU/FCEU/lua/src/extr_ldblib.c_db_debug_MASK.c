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
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8 (lua_State *L) {
  for (;;) {
    char buffer[250];
    FUNC1("lua_debug> ", stderr);
    if (FUNC0(buffer, sizeof(buffer), stdin) == 0 ||
        FUNC6(buffer, "cont\n") == 0)
      return 0;
    if (FUNC2(L, buffer, FUNC7(buffer), "=(debug command)") ||
        FUNC3(L, 0, 0, 0)) {
      FUNC1(FUNC5(L, -1), stderr);
      FUNC1("\n", stderr);
    }
    FUNC4(L, 0);  /* remove eventual returns */
  }
}