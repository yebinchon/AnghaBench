
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cb_param {int callback; void* stream; int * state; } ;
typedef int lua_State ;
typedef int TAOS ;


 int LUA_REGISTRYINDEX ;
 int free (struct cb_param*) ;
 int luaL_checknumber (int *,int) ;
 int luaL_ref (int *,int ) ;
 int lua_gettop (int *) ;
 int lua_newtable (int *) ;
 int lua_pushlightuserdata (int *,struct cb_param*) ;
 int lua_pushnumber (int *,int) ;
 int lua_pushstring (int *,char*) ;
 int lua_setfield (int *,int,char*) ;
 int * lua_topointer (int *,int) ;
 char* lua_tostring (int *,int) ;
 struct cb_param* malloc (int) ;
 int printf (char*,char*) ;
 int stream_cb ;
 char* taos_errstr (int *) ;
 void* taos_open_stream (int *,char*,int ,int,struct cb_param*,int *) ;

__attribute__((used)) static int l_open_stream(lua_State *L){
  int r = luaL_ref(L, LUA_REGISTRYINDEX);
  TAOS * taos = lua_topointer(L,1);
  char * sqlstr = lua_tostring(L,2);
  int stime = luaL_checknumber(L,3);

  lua_newtable(L);
  int table_index = lua_gettop(L);

  struct cb_param *p = malloc(sizeof(struct cb_param));
  p->state = L;
  p->callback=r;

  void * s = taos_open_stream(taos,sqlstr,stream_cb,stime,p,((void*)0));
  if (s == ((void*)0)) {
    printf("failed to open stream, reason:%s\n", taos_errstr(taos));
    free(p);
    lua_pushnumber(L, -1);
    lua_setfield(L, table_index, "code");
    lua_pushstring(L, taos_errstr(taos));
    lua_setfield(L, table_index, "error");
    lua_pushlightuserdata(L,((void*)0));
    lua_setfield(L, table_index, "stream");
  }else{

    lua_pushnumber(L, 0);
    lua_setfield(L, table_index, "code");
    lua_pushstring(L, taos_errstr(taos));
    lua_setfield(L, table_index, "error");
    p->stream = s;
    lua_pushlightuserdata(L,p);
    lua_setfield(L, table_index, "stream");
  }

  return 1;
}
