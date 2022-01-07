
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int libretrodb_cursor_t ;


 int * checkcursor (int *) ;
 int libretrodb_cursor_close (int *) ;

__attribute__((used)) static int cursor_close(lua_State *L)
{
 libretrodb_cursor_t *cursor = checkcursor(L);
 libretrodb_cursor_close(cursor);
 return 0;
}
