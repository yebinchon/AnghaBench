
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmsgpack_dom_value {int dummy; } ;
typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 int libretrodb_lua_to_rmsgpack_value (int *,int,struct rmsgpack_dom_value*) ;
 int lua_getfield (int *,int ,char*) ;
 scalar_t__ lua_isnil (int *,int) ;
 scalar_t__ lua_istable (int *,int) ;
 scalar_t__ lua_pcall (int *,int ,int,int ) ;
 int lua_pop (int *,int) ;
 char* lua_tostring (int *,int) ;
 int printf (char*,...) ;

__attribute__((used)) static int value_provider(void *ctx, struct rmsgpack_dom_value *out)
{
   int rv = 0;
   lua_State *L = ctx;

   lua_getfield(L, LUA_REGISTRYINDEX, "testlib_get_value");

   if (lua_pcall(L, 0, 1, 0) != 0)
   {
      printf(
            "error running function `get_value': %s\n",
            lua_tostring(L, -1)
            );
   }

   if (lua_isnil(L, -1))
      rv = 1;
   else if (lua_istable(L, -1))
      rv = libretrodb_lua_to_rmsgpack_value(L, -1, out);
   else
      printf("function `get_value' must return a table or nil\n");

   lua_pop(L, 1);
   return rv;
}
