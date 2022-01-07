
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_3__* fields; } ;
typedef TYPE_1__ proxy_resultset_t ;
typedef int lua_State ;
struct TYPE_6__ {int len; } ;
struct TYPE_5__ {TYPE_1__* udata; } ;
typedef TYPE_2__ GRef ;
typedef TYPE_3__ GPtrArray ;


 scalar_t__ luaL_checkself (int *) ;
 int lua_pushinteger (int *,int ) ;

__attribute__((used)) static int proxy_resultset_fields_len(lua_State *L) {
 GRef *ref = *(GRef **)luaL_checkself(L);
 proxy_resultset_t *res = ref->udata;
 GPtrArray *fields = res->fields;
    lua_pushinteger(L, fields->len);
    return 1;
}
