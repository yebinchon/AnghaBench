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
struct rmsgpack_dom_value {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int FUNC0 (int /*<<< orphan*/ *,int,struct rmsgpack_dom_value*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static int FUNC8(void *ctx, struct rmsgpack_dom_value *out)
{
   int rv       = 0;
   lua_State *L = ctx;

   FUNC1(L, LUA_REGISTRYINDEX, "testlib_get_value");

   if (FUNC4(L, 0, 1, 0) != 0)
   {
      FUNC7(
            "error running function `get_value': %s\n",
            FUNC6(L, -1)
            );
   }

   if (FUNC2(L, -1))
      rv = 1;
   else if (FUNC3(L, -1))
      rv = FUNC0(L, -1, out);
   else
      FUNC7("function `get_value' must return a table or nil\n");

   FUNC5(L, 1);
   return rv;
}