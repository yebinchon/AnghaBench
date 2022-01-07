
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int type; void* name; } ;
typedef TYPE_1__ MYSQL_FIELD ;
typedef int GPtrArray ;


 int FIELD_TYPE_VAR_STRING ;
 int g_ptr_array_add (int *,TYPE_1__*) ;
 void* g_strdup (char*) ;
 void* g_strdup_printf (char*,int ) ;
 scalar_t__ lua_isnumber (int *,int) ;
 scalar_t__ lua_isstring (int *,int) ;
 int lua_tointeger (int *,int) ;
 char* lua_tostring (int *,int) ;
 TYPE_1__* network_mysqld_proto_fielddef_new () ;

__attribute__((used)) static int lua_table_key_to_mysql_field(lua_State *L, GPtrArray *fields) {
 MYSQL_FIELD *field = ((void*)0);

 field = network_mysqld_proto_fielddef_new();
 if (lua_isstring(L, -2) && !lua_isnumber(L, -2)) {




  field->name = g_strdup(lua_tostring(L, -2));
 } else if (lua_isnumber(L, -2)) {
  field->name = g_strdup_printf("%ld", lua_tointeger(L, -2));
 } else {

  field->name = g_strdup("(hmm)");
 }
 field->type = FIELD_TYPE_VAR_STRING;
 g_ptr_array_add(fields, field);

 return 0;
}
