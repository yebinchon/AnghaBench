
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int gchar ;
typedef int GPtrArray ;


 int * g_ptr_array_index (int *,int) ;
 int luaL_checkinteger (int *,int) ;
 scalar_t__ luaL_checkself (int *) ;
 int lua_pushlstring (int *,int *,int ) ;
 int strlen (int *) ;

__attribute__((used)) static int proxy_clients_get(lua_State *L) {
 GPtrArray *raw_ips = *(GPtrArray **)luaL_checkself(L);
 int index = luaL_checkinteger(L, 2) - 1;
 gchar *ip = g_ptr_array_index(raw_ips, index);
 lua_pushlstring(L, ip, strlen(ip));
 return 1;
}
