
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * raw_pwds; int * raw_ips; } ;
typedef TYPE_1__ network_backends_t ;
typedef int lua_State ;
struct TYPE_5__ {TYPE_1__* backends; int log_path; int instance_name; } ;
typedef TYPE_2__ chassis ;
typedef int GPtrArray ;


 int g_assert (int) ;
 int lua_getfield (int *,int,char*) ;
 int lua_getglobal (int *,char*) ;
 int lua_gettop (int *) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_istable (int *,int) ;
 void* lua_newuserdata (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushstring (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;
 int network_backends_lua_getmetatable (int *) ;
 int network_clients_lua_getmetatable (int *) ;
 int network_mysqld_lua_init_global_fenv (int *) ;
 int network_pwds_lua_getmetatable (int *) ;

void network_mysqld_lua_setup_global(lua_State *L , chassis *chas) {
 network_backends_t **backends_p;

 int stack_top = lua_gettop(L);





 lua_getglobal(L, "proxy");
 if (lua_isnil(L, -1)) {
  lua_pop(L, 1);

  network_mysqld_lua_init_global_fenv(L);

  lua_getglobal(L, "proxy");
 }
 g_assert(lua_istable(L, -1));
 lua_getfield(L, -1, "global");



 lua_getfield(L, -1, "config");

    lua_pushstring(L, chas->instance_name);
 lua_setfield(L, -2, "instance");

    lua_pushstring(L, chas->log_path);
 lua_setfield(L, -2, "logpath");

    lua_pop(L, 1);


 backends_p = lua_newuserdata(L, sizeof(network_backends_t *));
 *backends_p = chas->backends;

 network_backends_lua_getmetatable(L);
 lua_setmetatable(L, -2);

 lua_setfield(L, -2, "backends");

 GPtrArray **raw_ips_p = lua_newuserdata(L, sizeof(GPtrArray *));
 *raw_ips_p = chas->backends->raw_ips;
 network_clients_lua_getmetatable(L);
 lua_setmetatable(L, -2);
 lua_setfield(L, -2, "clients");

 GPtrArray **raw_pwds_p = lua_newuserdata(L, sizeof(GPtrArray *));
 *raw_pwds_p = chas->backends->raw_pwds;
 network_pwds_lua_getmetatable(L);
 lua_setmetatable(L, -2);
 lua_setfield(L, -2, "pwds");

 lua_pop(L, 2);

 g_assert(lua_gettop(L) == stack_top);
}
