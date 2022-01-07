
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int g_assert (int) ;
 int lua_chassis_log (int *) ;
 int lua_gettop (int *) ;
 int lua_insert (int *,int) ;
 int lua_pushliteral (int *,char*) ;
 int lua_remove (int *,int) ;

__attribute__((used)) static int lua_chassis_log_message(lua_State *L) {
 int n = lua_gettop(L);
 int retval;
 lua_pushliteral(L, "message");
 lua_insert(L, 1);
 retval = lua_chassis_log(L);
 lua_remove(L, 1);
 g_assert(n == lua_gettop(L));
 return retval;
}
