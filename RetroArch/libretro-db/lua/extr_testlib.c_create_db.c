
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int RFILE ;


 int LUA_REGISTRYINDEX ;
 int RETRO_VFS_FILE_ACCESS_HINT_NONE ;
 int RETRO_VFS_FILE_ACCESS_WRITE ;
 int filestream_close (int *) ;
 int * filestream_open (char const*,int ,int ) ;
 int libretrodb_create (int *,int *,int *) ;
 char* luaL_checkstring (int *,int) ;
 int lua_error (int *) ;
 int lua_isfunction (int *,int) ;
 int lua_pushstring (int *,char*) ;
 int lua_setfield (int *,int ,char*) ;
 int value_provider ;

__attribute__((used)) static int create_db(lua_State *L)
{
   RFILE *dst;
   const char *db_file = luaL_checkstring(L, -2);

   if (!lua_isfunction(L, -1))
   {
      lua_pushstring(L, "second argument must be a function");
      lua_error(L);
   }
   lua_setfield(L, LUA_REGISTRYINDEX, "testlib_get_value");

   dst = filestream_open(db_file,
         RETRO_VFS_FILE_ACCESS_WRITE,
         RETRO_VFS_FILE_ACCESS_HINT_NONE);
   if (!dst)
   {
      lua_pushstring(L, "Could not open destination file");
      lua_error(L);
   }

   libretrodb_create(dst, &value_provider, L);
   filestream_close(dst);

   return 0;
}
