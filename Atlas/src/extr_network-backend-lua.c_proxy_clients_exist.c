
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
typedef scalar_t__ guint ;
typedef int gchar ;
struct TYPE_3__ {scalar_t__ len; } ;
typedef TYPE_1__ GPtrArray ;


 int g_ptr_array_index (TYPE_1__*,scalar_t__) ;
 scalar_t__ luaL_checkself (int *) ;
 int lua_pushinteger (int *,int) ;
 int * lua_tostring (int *,int) ;
 scalar_t__ strcmp (int *,int ) ;

__attribute__((used)) static int proxy_clients_exist(lua_State *L) {
 GPtrArray *raw_ips = *(GPtrArray **)luaL_checkself(L);
 gchar *client = lua_tostring(L, -1);
 guint i;
 for (i = 0; i < raw_ips->len; ++i) {
  if (strcmp(client, g_ptr_array_index(raw_ips, i)) == 0) {
   lua_pushinteger(L, 1);
   return 1;
  }
 }
 lua_pushinteger(L, 0);
 return 1;
}
