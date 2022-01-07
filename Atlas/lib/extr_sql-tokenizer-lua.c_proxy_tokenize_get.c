
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int token ;
typedef int sql_token ;
typedef int lua_State ;
struct TYPE_2__ {scalar_t__ len; int ** pdata; } ;
typedef TYPE_1__ GPtrArray ;


 scalar_t__ G_MAXINT ;
 int luaL_checkinteger (int *,int) ;
 scalar_t__ luaL_checkself (int *) ;
 int ** lua_newuserdata (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_setmetatable (int *,int) ;
 int sql_tokenizer_lua_token_getmetatable (int *) ;

__attribute__((used)) static int proxy_tokenize_get(lua_State *L) {
 GPtrArray *tokens = *(GPtrArray **)luaL_checkself(L);
 int ndx = luaL_checkinteger(L, 2);
 sql_token *token;
 sql_token **token_p;

 if (tokens->len > G_MAXINT) {
  return 0;
 }


 if (ndx < 1 || ndx > (int)tokens->len) {
  return 0;
 }

 token = tokens->pdata[ndx - 1];
 if (((void*)0) == token) {
  lua_pushnil(L);

  return 1;
 }

 token_p = lua_newuserdata(L, sizeof(token));
 *token_p = token;

 sql_tokenizer_lua_token_getmetatable(L);
 lua_setmetatable(L, -2);

 return 1;
}
