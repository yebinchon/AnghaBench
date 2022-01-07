
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmsgpack_dom_value {int dummy; } ;
typedef int lua_State ;
typedef int libretrodb_cursor_t ;


 int * checkcursor (int *) ;
 scalar_t__ libretrodb_cursor_read_item (int *,struct rmsgpack_dom_value*) ;
 int lua_pushnil (int *) ;
 int push_rmsgpack_value (int *,struct rmsgpack_dom_value*) ;

__attribute__((used)) static int cursor_read(lua_State *L)
{
   libretrodb_cursor_t *cursor = checkcursor(L);
   struct rmsgpack_dom_value value;
   if (libretrodb_cursor_read_item(cursor, &value) == 0)
      push_rmsgpack_value(L, &value);
   else
      lua_pushnil(L);
   return 1;
}
