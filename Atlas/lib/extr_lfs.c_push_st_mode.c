
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int lua_State ;


 int lua_pushstring (int *,int ) ;
 int mode2string (int ) ;

__attribute__((used)) static void push_st_mode (lua_State *L, struct stat *info) {
 lua_pushstring (L, mode2string (info->st_mode));
}
