
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_rdev; } ;
typedef int lua_State ;
typedef int lua_Number ;


 int lua_pushnumber (int *,int ) ;

__attribute__((used)) static void push_st_rdev (lua_State *L, struct stat *info) {
 lua_pushnumber (L, (lua_Number)info->st_rdev);
}
