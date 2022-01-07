
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int libretrodb_cursor_t ;


 int * checkcursor (int *) ;
 int luaL_getmetafield (int *,int,char*) ;
 int lua_pushvalue (int *,int) ;

__attribute__((used)) static int cursor_iter(lua_State *L)
{
   libretrodb_cursor_t *cursor = checkcursor(L);

   (void)cursor;

   luaL_getmetafield(L, -1, "read");
   lua_pushvalue(L, -2);
   return 2;
}
