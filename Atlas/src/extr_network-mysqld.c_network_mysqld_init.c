
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
typedef int gchar ;
struct TYPE_4__ {int event_thread_count; int backends; TYPE_3__* sc; } ;
typedef TYPE_1__ chassis ;
struct TYPE_5__ {int * L; } ;


 int CHASSIS_LUA_REGISTRY_KEY ;
 int LUA_REGISTRYINDEX ;
 int lua_pushlightuserdata (int *,void*) ;
 TYPE_3__* lua_scope_new () ;
 int lua_setfield (int *,int ,int ) ;
 int network_backends_new (int ,int *) ;

int network_mysqld_init(chassis *srv, gchar *default_file) {

 srv->sc = lua_scope_new();
 lua_State *L = srv->sc->L;
 lua_pushlightuserdata(L, (void*)srv);
 lua_setfield(L, LUA_REGISTRYINDEX, CHASSIS_LUA_REGISTRY_KEY);

 srv->backends = network_backends_new(srv->event_thread_count, default_file);

 return 0;
}
