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
 int /*<<< orphan*/  LUA_COMMON ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_HINT_NONE ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char const**) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,...) ; 
 char* FUNC10 (int) ; 
 int /*<<< orphan*/  value_provider ; 

int FUNC11(int argc, char ** argv)
{
   lua_State *L;
   const char *db_file;
   const char *lua_file;
   RFILE *dst;
   int rv = 0;

   if (argc < 3)
   {
      FUNC9("usage:\n%s <db file> <lua file> [args ...]\n", argv[0]);
      return 1;
   }

   db_file  = argv[1];
   lua_file = argv[2];
   L        = FUNC6();

   FUNC7(L);
   FUNC5(L, LUA_COMMON);

   if (FUNC4(L, lua_file) != 0)
      return 1;

   FUNC0(L, argc - 2, (const char **) argv + 2);

   dst = FUNC2(db_file,
         RETRO_VFS_FILE_ACCESS_WRITE,
         RETRO_VFS_FILE_ACCESS_HINT_NONE);

   if (!dst)
   {
      FUNC9(
            "Could not open destination file '%s': %s\n",
            db_file,
            FUNC10(errno)
            );
      rv = errno;
      goto clean;
   }

   rv = FUNC3(dst, &value_provider, L);

clean:
   FUNC8(L);
   FUNC1(dst);
   return rv;
}