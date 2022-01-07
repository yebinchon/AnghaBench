
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef void libretrodb_cursor_t ;


 int luaL_argcheck (int *,int ,int,char*) ;
 void* luaL_checkudata (int *,int,char*) ;

__attribute__((used)) static libretrodb_cursor_t *checkcursor(lua_State *L)
{
 void *ud = luaL_checkudata(L, 1, "RarchDB.Cursor");
 luaL_argcheck(L, ud != ((void*)0), 1, "`RarchDB.Cursor' expected");
 return ud;
}
