
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sql_token ;
typedef int lua_State ;
struct TYPE_2__ {scalar_t__ len; int ** pdata; } ;
typedef TYPE_1__ GPtrArray ;


 scalar_t__ G_MAXINT ;
 int LUA_TNIL ;
 int luaL_checkinteger (int *,int) ;
 scalar_t__ luaL_checkself (int *) ;
 int luaL_checktype (int *,int,int ) ;
 int sql_token_free (int *) ;

__attribute__((used)) static int proxy_tokenize_set(lua_State *L) {
 GPtrArray *tokens = *(GPtrArray **)luaL_checkself(L);
 int ndx = luaL_checkinteger(L, 2);
 sql_token *token;

 luaL_checktype(L, 3, LUA_TNIL);

 if (tokens->len > G_MAXINT) {
  return 0;
 }


 if (ndx < 1 || ndx > (int)tokens->len) {
  return 0;
 }

 token = tokens->pdata[ndx - 1];
 if (((void*)0) != token) {
  sql_token_free(token);
  tokens->pdata[ndx - 1] = ((void*)0);
 }

 return 0;
}
