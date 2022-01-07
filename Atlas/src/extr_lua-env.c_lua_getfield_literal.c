
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int abs_index (int *,int) ;
 int lua_gettable (int *,int) ;
 int lua_pushlstring (int *,char const*,size_t) ;

void lua_getfield_literal (lua_State *L, int idx, const char *k, size_t k_len) {
 idx = abs_index(L, idx);

 lua_pushlstring(L, k, k_len);

 lua_gettable(L, idx);
}
