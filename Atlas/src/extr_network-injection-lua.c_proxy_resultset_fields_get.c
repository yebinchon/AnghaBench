
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
typedef int lua_Integer ;
typedef int field ;
struct TYPE_6__ {scalar_t__ len; int ** pdata; } ;
struct TYPE_5__ {TYPE_1__* udata; } ;
typedef int MYSQL_FIELD ;
typedef TYPE_2__ GRef ;
typedef TYPE_3__ GPtrArray ;


 scalar_t__ G_MAXINT ;
 int luaL_checkinteger (int *,int) ;
 scalar_t__ luaL_checkself (int *) ;
 int ** lua_newuserdata (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_setmetatable (int *,int) ;
 int methods_proxy_resultset_fields_field ;
 int proxy_getmetatable (int *,int ) ;

__attribute__((used)) static int proxy_resultset_fields_get(lua_State *L) {
 GRef *ref = *(GRef **)luaL_checkself(L);
 proxy_resultset_t *res = ref->udata;
 GPtrArray *fields = res->fields;
 MYSQL_FIELD *field;
 MYSQL_FIELD **field_p;
 lua_Integer ndx = luaL_checkinteger(L, 2);


 if (fields->len > G_MAXINT) {
  return 0;
 }

 if (ndx < 1 || ndx > (lua_Integer)fields->len) {
  lua_pushnil(L);

  return 1;
 }

 field = fields->pdata[ndx - 1];

 field_p = lua_newuserdata(L, sizeof(field));
 *field_p = field;

 proxy_getmetatable(L, methods_proxy_resultset_fields_field);
 lua_setmetatable(L, -2);

 return 1;
}
