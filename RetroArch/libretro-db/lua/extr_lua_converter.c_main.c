
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int RFILE ;


 int LUA_COMMON ;
 int RETRO_VFS_FILE_ACCESS_HINT_NONE ;
 int RETRO_VFS_FILE_ACCESS_WRITE ;
 int call_init (int *,int,char const**) ;
 int errno ;
 int filestream_close (int *) ;
 int * filestream_open (char const*,int ,int ) ;
 int libretrodb_create (int *,int *,int *) ;
 scalar_t__ luaL_dofile (int *,char const*) ;
 int luaL_dostring (int *,int ) ;
 int * luaL_newstate () ;
 int luaL_openlibs (int *) ;
 int lua_close (int *) ;
 int printf (char*,char const*,...) ;
 char* strerror (int) ;
 int value_provider ;

int main(int argc, char ** argv)
{
   lua_State *L;
   const char *db_file;
   const char *lua_file;
   RFILE *dst;
   int rv = 0;

   if (argc < 3)
   {
      printf("usage:\n%s <db file> <lua file> [args ...]\n", argv[0]);
      return 1;
   }

   db_file = argv[1];
   lua_file = argv[2];
   L = luaL_newstate();

   luaL_openlibs(L);
   luaL_dostring(L, LUA_COMMON);

   if (luaL_dofile(L, lua_file) != 0)
      return 1;

   call_init(L, argc - 2, (const char **) argv + 2);

   dst = filestream_open(db_file,
         RETRO_VFS_FILE_ACCESS_WRITE,
         RETRO_VFS_FILE_ACCESS_HINT_NONE);

   if (!dst)
   {
      printf(
            "Could not open destination file '%s': %s\n",
            db_file,
            strerror(errno)
            );
      rv = errno;
      goto clean;
   }

   rv = libretrodb_create(dst, &value_provider, L);

clean:
   lua_close(L);
   filestream_close(dst);
   return rv;
}
