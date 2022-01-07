
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {int len; } ;
typedef TYPE_1__ GPtrArray ;


 scalar_t__ luaL_checkself (int *) ;
 int lua_pushinteger (int *,int ) ;

__attribute__((used)) static int proxy_clients_len(lua_State *L) {
 GPtrArray *raw_ips = *(GPtrArray **)luaL_checkself(L);
 lua_pushinteger(L, raw_ips->len);
 return 1;
}
