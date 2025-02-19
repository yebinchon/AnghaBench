
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushliteral (int *,char*) ;
 int lua_settable (int *,int) ;

__attribute__((used)) static void set_info (lua_State *L) {
 lua_pushliteral (L, "_COPYRIGHT");
 lua_pushliteral (L, "Copyright (c) 2008 MySQL AB, 2008 Sun Microsystems, Inc.");
 lua_settable (L, -3);
 lua_pushliteral (L, "_DESCRIPTION");
 lua_pushliteral (L, "export chassis-functions as chassis.*");
 lua_settable (L, -3);
 lua_pushliteral (L, "_VERSION");
 lua_pushliteral (L, "LuaChassis 0.2");
 lua_settable (L, -3);
}
