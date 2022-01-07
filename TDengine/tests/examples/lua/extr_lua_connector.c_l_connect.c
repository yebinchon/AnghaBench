
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int TAOS ;


 int luaL_checknumber (int *,int) ;
 int lua_gettop (int *) ;
 int lua_newtable (int *) ;
 int lua_pushlightuserdata (int *,int *) ;
 int lua_pushnumber (int *,int) ;
 int lua_pushstring (int *,char*) ;
 int lua_setfield (int *,int,char*) ;
 char* lua_tostring (int *,int) ;
 int printf (char*,...) ;
 int * taos_connect (char*,char*,char*,char*,int) ;
 char* taos_errstr (int *) ;
 int taos_init () ;

__attribute__((used)) static int l_connect(lua_State *L){
  TAOS * taos;
  char *host = lua_tostring(L, 1);
  char *user = lua_tostring(L, 2);
  char *password = lua_tostring(L, 3);
  char *database = lua_tostring(L, 4);
  int port =luaL_checknumber(L, 5);
  taos_init();

  lua_newtable(L);
  int table_index = lua_gettop(L);

  taos = taos_connect(host, user,password,database, port);
  if (taos == ((void*)0)) {
    printf("failed to connect server, reason:%s\n", taos_errstr(taos));

    lua_pushnumber(L, -1);
    lua_setfield(L, table_index, "code");
    lua_pushstring(L, taos_errstr(taos));
    lua_setfield(L, table_index, "error");
    lua_pushlightuserdata(L,((void*)0));
    lua_setfield(L, table_index, "conn");
  }else{
    printf("success to connect server\n");
    lua_pushnumber(L, 0);
    lua_setfield(L, table_index, "code");
    lua_pushstring(L, taos_errstr(taos));
    lua_setfield(L, table_index, "error");
    lua_pushlightuserdata(L,taos);
    lua_setfield(L, table_index, "conn");
  }

  return 1;
}
