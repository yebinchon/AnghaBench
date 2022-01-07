
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int libretrodb_t ;
typedef int libretrodb_cursor_t ;


 int * checkdb (int *) ;
 int libretrodb_cursor_open (int *,int *,int *) ;
 int luaL_getmetatable (int *,char*) ;
 int * lua_newuserdata (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,int ) ;
 int lua_setmetatable (int *,int) ;
 int strerror (int) ;

__attribute__((used)) static int db_cursor_open(lua_State *L)
{
   int rv;
   libretrodb_cursor_t *cursor = ((void*)0);
   libretrodb_t *db = checkdb(L);
   cursor = lua_newuserdata(L, sizeof(libretrodb_t));
   if ((rv = libretrodb_cursor_open(db, cursor, ((void*)0))) == 0)
   {
      luaL_getmetatable(L, "RarchDB.Cursor");
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
