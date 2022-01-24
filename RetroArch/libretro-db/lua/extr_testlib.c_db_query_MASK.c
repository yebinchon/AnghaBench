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
typedef  int /*<<< orphan*/  libretrodb_query_t ;
typedef  int /*<<< orphan*/  libretrodb_cursor_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 char const* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 

__attribute__((used)) static int FUNC13(lua_State *L)
{
   libretrodb_t            *db = FUNC0(L);
   const char           *query = FUNC4(L, -1);
   const char           *error = NULL;
   libretrodb_query_t       *q = FUNC2(
         db, query, FUNC12(query), &error);

   if (error)
   {
      FUNC8(L);
      FUNC9(L, error);
   }
   else
   {
      int rv;
      libretrodb_cursor_t *cursor = FUNC6(L, sizeof(libretrodb_t));

      if ((rv = FUNC1(db, cursor, q)) == 0)
      {
         FUNC5(L, "RarchDB.Cursor");
         FUNC10(L, -2);
         FUNC8(L);
      }
      else
      {
         FUNC7(L, 1);
         FUNC8(L);
         FUNC9(L, FUNC11(-rv));
      }
      FUNC3(q);
   }
   return 2;
}