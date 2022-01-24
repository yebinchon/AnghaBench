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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/ ** FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC5 (lua_State *L) {
  const char *filename = FUNC0(L, 1);
  const char *mode = FUNC1(L, 2, "r");
  FILE **pf = FUNC3(L);
  *pf = FUNC2(L, filename, mode);
  return (*pf == NULL) ? FUNC4(L, 0, filename) : 1;
}