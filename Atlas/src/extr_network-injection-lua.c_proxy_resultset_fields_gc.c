
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int GRef ;


 int g_ref_unref (int *) ;
 scalar_t__ luaL_checkself (int *) ;

__attribute__((used)) static int proxy_resultset_fields_gc(lua_State *L) {
 GRef *ref = *(GRef **)luaL_checkself(L);

 g_ref_unref(ref);

 return 0;
}
