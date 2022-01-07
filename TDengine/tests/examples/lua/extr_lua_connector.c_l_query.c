
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
typedef char int64_t ;
struct TYPE_3__ {char* name; int type; } ;
typedef int ** TAOS_ROW ;
typedef int TAOS_RES ;
typedef TYPE_1__ TAOS_FIELD ;
typedef int TAOS ;
 int lua_gettop (int *) ;
 int lua_newtable (int *) ;
 int lua_pushinteger (int *,char) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,double) ;
 int lua_pushstring (int *,char*) ;
 int lua_setfield (int *,int,char*) ;
 int lua_settable (int *,int) ;
 int * lua_topointer (int *,int) ;
 char* lua_tostring (int *,int) ;
 int printf (char*,char*) ;
 int taos_affected_rows (int *) ;
 char* taos_errstr (int *) ;
 TYPE_1__* taos_fetch_fields (int *) ;
 int ** taos_fetch_row (int *) ;
 int taos_field_count (int *) ;
 int taos_free_result (int *) ;
 scalar_t__ taos_query (int *,char*) ;
 int * taos_use_result (int *) ;

__attribute__((used)) static int l_query(lua_State *L){
  TAOS * taos= lua_topointer(L,1);
  char *s = lua_tostring(L, 2);
  TAOS_RES *result;
  lua_newtable(L);
  int table_index = lua_gettop(L);


  if(taos_query(taos, s)!=0){
    printf("failed, reason:%s\n", taos_errstr(taos));
    lua_pushnumber(L, -1);
    lua_setfield(L, table_index, "code");
    lua_pushstring(L, taos_errstr(taos));
    lua_setfield(L, table_index, "error");

    return 1;

  }else{

    result = taos_use_result(taos);

    if (result == ((void*)0)) {
      printf("failed to get result, reason:%s\n", taos_errstr(taos));
      lua_pushnumber(L, -2);
      lua_setfield(L, table_index, "code");
      lua_pushstring(L, taos_errstr(taos));
      lua_setfield(L, table_index, "error");
      return 1;
    }

    TAOS_ROW row;
    int rows = 0;
    int num_fields = taos_field_count(taos);
    TAOS_FIELD *fields = taos_fetch_fields(result);
    char temp[256];

    int affectRows = taos_affected_rows(taos);

    lua_pushnumber(L, 0);
    lua_setfield(L, table_index, "code");
    lua_pushinteger(L, affectRows);
    lua_setfield(L, table_index, "affected");
    lua_newtable(L);

    while ((row = taos_fetch_row(result))) {

      rows++;

      lua_pushnumber(L,rows);
      lua_newtable(L);

      for (int i = 0; i < num_fields; ++i) {
 if (row[i] == ((void*)0)) {
   continue;
 }

 lua_pushstring(L,fields[i].name);

 switch (fields[i].type) {
 case 128:
   lua_pushinteger(L,*((char *)row[i]));
   break;
 case 130:
   lua_pushinteger(L,*((short *)row[i]));
   break;
 case 132:
   lua_pushinteger(L,*((int *)row[i]));
   break;
 case 137:
   lua_pushinteger(L,*((int64_t *)row[i]));
   break;
 case 133:
   lua_pushnumber(L,*((float *)row[i]));
   break;
 case 134:
   lua_pushnumber(L,*((double *)row[i]));
   break;
 case 136:
 case 131:
   lua_pushstring(L,(char *)row[i]);
   break;
 case 129:
   lua_pushinteger(L,*((int64_t *)row[i]));
   break;
 case 135:
   lua_pushinteger(L,*((char *)row[i]));
   break;
 default:
   lua_pushnil(L);
   break;
 }

 lua_settable(L,-3);
      }

      lua_settable(L,-3);
    }
    taos_free_result(result);
  }

  lua_setfield(L, table_index, "item");
  return 1;
}
