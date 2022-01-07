
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int libretrodb_t ;


 int libretrodb_open (char const*,int *) ;
 char* luaL_checkstring (int *,int) ;
 int luaL_getmetatable (int *,char*) ;
 int * lua_newuserdata (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,int ) ;
 int lua_setmetatable (int *,int) ;
 int strerror (int) ;

__attribute__((used)) static int db_new(lua_State *L)
{
   libretrodb_t *db = ((void*)0);
   const char *db_file = ((void*)0);
   int rv;
   db_file = luaL_checkstring(L, -1);
   db = lua_newuserdata(L, sizeof(libretrodb_t));
   if ((rv = libretrodb_open(db_file, db)) == 0)
   {
      luaL_getmetatable(L, "RarchDB.DB");
      lua_setmetatable(L, -2);
      lua_pushnil(L);
   }
   else
   {
      lua_pop(L, 1);
      lua_pushnil(L);
      lua_pushstring(L, strerror(-rv));
   }
   return 2;
}
