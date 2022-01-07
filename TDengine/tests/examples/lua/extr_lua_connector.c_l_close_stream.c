
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cb_param {int stream; } ;
typedef int lua_State ;


 int free (struct cb_param*) ;
 struct cb_param* lua_touserdata (int *,int) ;
 int taos_close_stream (int ) ;

__attribute__((used)) static int l_close_stream(lua_State *L){

  struct cb_param *p = lua_touserdata(L,1);
  taos_close_stream(p->stream);
  free(p);
  return 0;
}
