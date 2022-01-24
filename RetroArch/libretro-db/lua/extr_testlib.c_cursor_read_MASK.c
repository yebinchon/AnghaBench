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
typedef  int /*<<< orphan*/  libretrodb_cursor_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct rmsgpack_dom_value*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct rmsgpack_dom_value*) ; 

__attribute__((used)) static int FUNC4(lua_State *L)
{
   libretrodb_cursor_t *cursor = FUNC0(L);
   struct rmsgpack_dom_value value;
   if (FUNC1(cursor, &value) == 0)
      FUNC3(L, &value);
   else
      FUNC2(L);
   return 1;
}