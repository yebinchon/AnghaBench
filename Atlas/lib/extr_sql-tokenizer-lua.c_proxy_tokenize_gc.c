
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int GPtrArray ;


 scalar_t__ luaL_checkself (int *) ;
 int sql_tokens_free (int *) ;

__attribute__((used)) static int proxy_tokenize_gc(lua_State *L) {
 GPtrArray *tokens = *(GPtrArray **)luaL_checkself(L);

 sql_tokens_free(tokens);

 return 0;
}
