
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_ctime; } ;
typedef int lua_State ;


 int lua_pushnumber (int *,int ) ;

__attribute__((used)) static void push_st_ctime (lua_State *L, struct stat *info) {
 lua_pushnumber (L, info->st_ctime);
}
