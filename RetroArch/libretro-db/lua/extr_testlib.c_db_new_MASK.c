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

/* Variables and functions */
 int FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(lua_State *L)
{
   libretrodb_t *db = NULL;
   const char *db_file = NULL;
   int rv;
   db_file = FUNC1(L, -1);
   db = FUNC3(L, sizeof(libretrodb_t));
   if ((rv = FUNC0(db_file, db)) == 0)
   {
      FUNC2(L, "RarchDB.DB");
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