
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int GRef ;


 int g_ref_ref (int *) ;
 int ** lua_newuserdata (int *,int) ;
 int lua_setmetatable (int *,int) ;
 int methods_proxy_resultset ;
 int proxy_getmetatable (int *,int ) ;

__attribute__((used)) static int proxy_resultset_lua_push_ref(lua_State *L, GRef *ref) {
 GRef **ref_p;

 g_ref_ref(ref);

 ref_p = lua_newuserdata(L, sizeof(GRef *));
 *ref_p = ref;

 proxy_getmetatable(L, methods_proxy_resultset);
 lua_setmetatable(L, -2);

 return 1;
}
