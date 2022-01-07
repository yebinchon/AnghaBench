
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int getuid () ;
 int lua_pushinteger (int *,int ) ;

__attribute__((used)) static int lua_getuid (lua_State *L) {
 lua_pushinteger (L, getuid());

 return 1;
}
