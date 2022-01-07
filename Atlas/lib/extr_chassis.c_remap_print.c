
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int g_assert (int) ;
 int lua_chassis_log_message ;
 int lua_getglobal (int *,char*) ;
 int lua_gettop (int *) ;
 int lua_pop (int *,int) ;
 int lua_register (int *,char*,int ) ;
 int lua_setfield (int *,int,char*) ;

__attribute__((used)) static void remap_print(lua_State *L) {
 int n = lua_gettop(L);

 lua_getglobal(L, "os");
 lua_getglobal(L, "print");
 lua_setfield(L, -2, "print");
    lua_pop(L, 1);

 lua_register(L, "print", lua_chassis_log_message);

 g_assert(n == lua_gettop(L));
}
