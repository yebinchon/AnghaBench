
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int TAOS ;


 int lua_gettop (int *) ;
 int lua_newtable (int *) ;
 int lua_pushnumber (int *,int) ;
 int lua_pushstring (int *,char*) ;
 int lua_setfield (int *,int,char*) ;
 int * lua_topointer (int *,int) ;
 int taos_close (int *) ;

__attribute__((used)) static int l_close(lua_State *L){
  TAOS * taos= lua_topointer(L,1);
  lua_newtable(L);
  int table_index = lua_gettop(L);

  if(taos == ((void*)0)){
    lua_pushnumber(L, -1);
    lua_setfield(L, table_index, "code");
    lua_pushstring(L, "null pointer.");
    lua_setfield(L, table_index, "error");
  }else{
    taos_close(taos);
    lua_pushnumber(L, 0);
    lua_setfield(L, table_index, "code");
    lua_pushstring(L, "done.");
    lua_setfield(L, table_index, "error");
  }
  return 1;
}
