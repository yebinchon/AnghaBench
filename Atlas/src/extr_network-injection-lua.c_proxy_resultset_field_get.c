
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
typedef int gsize ;
struct TYPE_2__ {int table; int org_table; int org_name; int name; int type; } ;
typedef TYPE_1__ MYSQL_FIELD ;


 int C (char*) ;
 char* luaL_checklstring (int *,int,int *) ;
 scalar_t__ luaL_checkself (int *) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,int ) ;
 scalar_t__ strleq (char const*,int ,int ) ;

__attribute__((used)) static int proxy_resultset_field_get(lua_State *L) {
 MYSQL_FIELD *field = *(MYSQL_FIELD **)luaL_checkself(L);
 gsize keysize = 0;
 const char *key = luaL_checklstring(L, 2, &keysize);

 if (strleq(key, keysize, C("type"))) {
  lua_pushinteger(L, field->type);
 } else if (strleq(key, keysize, C("name"))) {
  lua_pushstring(L, field->name);
 } else if (strleq(key, keysize, C("org_name"))) {
  lua_pushstring(L, field->org_name);
 } else if (strleq(key, keysize, C("org_table"))) {
  lua_pushstring(L, field->org_table);
 } else if (strleq(key, keysize, C("table"))) {
  lua_pushstring(L, field->table);
 } else {
  lua_pushnil(L);
 }

 return 1;
}
