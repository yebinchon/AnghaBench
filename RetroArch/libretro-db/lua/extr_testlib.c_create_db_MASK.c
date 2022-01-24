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
typedef  int /*<<< orphan*/  RFILE ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_HINT_NONE ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  value_provider ; 

__attribute__((used)) static int FUNC8(lua_State *L)
{
   RFILE *dst;
   const char *db_file = FUNC3(L, -2);

   if (!FUNC5(L, -1))
   {
      FUNC6(L, "second argument must be a function");
      FUNC4(L);
   }
   FUNC7(L, LUA_REGISTRYINDEX, "testlib_get_value");

   dst = FUNC1(db_file,
         RETRO_VFS_FILE_ACCESS_WRITE,
         RETRO_VFS_FILE_ACCESS_HINT_NONE);
   if (!dst)
   {
      FUNC6(L, "Could not open destination file");
      FUNC4(L);
   }

   FUNC2(dst, &value_provider, L);
   FUNC0(dst);

   return 0;
}