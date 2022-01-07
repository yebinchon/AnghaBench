
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proxy_resultset_t ;
typedef int lua_State ;
typedef int GRef ;
typedef int GDestroyNotify ;


 int * g_ref_new () ;
 int g_ref_set (int *,int *,int ) ;
 int ** lua_newuserdata (int *,int) ;
 int lua_setmetatable (int *,int) ;
 int methods_proxy_resultset ;
 int proxy_getmetatable (int *,int ) ;
 scalar_t__ proxy_resultset_free ;

__attribute__((used)) static int proxy_resultset_lua_push(lua_State *L, proxy_resultset_t *_res) {
 GRef **ref_p;
 GRef *ref;

 ref = g_ref_new();
 g_ref_set(ref, _res, (GDestroyNotify)proxy_resultset_free);

 ref_p = lua_newuserdata(L, sizeof(GRef *));
 *ref_p = ref;

 proxy_getmetatable(L, methods_proxy_resultset);
 lua_setmetatable(L, -2);

 return 1;
}
