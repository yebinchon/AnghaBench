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
typedef  int /*<<< orphan*/  libretrodb_t ;
typedef  int /*<<< orphan*/  libretrodb_cursor_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(lua_State *L)
{
   int rv;
   libretrodb_cursor_t *cursor = NULL;
   libretrodb_t *db = FUNC0(L);
   cursor = FUNC3(L, sizeof(libretrodb_t));
   if ((rv = FUNC1(db, cursor, NULL)) == 0)
   {
      FUNC2(L, "RarchDB.Cursor");
      FUNC7(L, -2);
      FUNC5(L);
   }
   else
   {
      FUNC4(L, 1);
      FUNC5(L);
      FUNC6(L, FUNC8(-rv));
   }
   return 2;
}