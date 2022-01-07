
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int libretrodb_t ;
typedef int libretrodb_query_t ;
typedef int libretrodb_cursor_t ;


 int * checkdb (int *) ;
 int libretrodb_cursor_open (int *,int *,int *) ;
 int * libretrodb_query_compile (int *,char const*,int ,char const**) ;
 int libretrodb_query_free (int *) ;
 char* luaL_checkstring (int *,int) ;
 int luaL_getmetatable (int *,char*) ;
 int * lua_newuserdata (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char const*) ;
 int lua_setmetatable (int *,int) ;
 char const* strerror (int) ;
 int strlen (char const*) ;

__attribute__((used)) static int db_query(lua_State *L)
{
   libretrodb_t *db = checkdb(L);
   const char *query = luaL_checkstring(L, -1);
   const char *error = ((void*)0);
   libretrodb_query_t *q = libretrodb_query_compile(
         db, query, strlen(query), &error);

   if (error)
   {
      lua_pushnil(L);
      lua_pushstring(L, error);
   }
   else
   {
      int rv;
      libretrodb_cursor_t *cursor = lua_newuserdata(L, sizeof(libretrodb_t));

      if ((rv = libretrodb_cursor_open(db, cursor, q)) == 0)
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
      libretrodb_query_free(q);
   }
   return 2;
}
