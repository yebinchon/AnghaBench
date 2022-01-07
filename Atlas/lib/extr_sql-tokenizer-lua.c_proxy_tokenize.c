
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tokens ;
typedef int lua_State ;
typedef int GPtrArray ;


 char* luaL_checklstring (int *,int,size_t*) ;
 int ** lua_newuserdata (int *,int) ;
 int lua_setmetatable (int *,int) ;
 int sql_tokenizer (int *,char const*,size_t) ;
 int sql_tokenizer_lua_getmetatable (int *) ;
 int * sql_tokens_new () ;

int proxy_tokenize(lua_State *L) {
 size_t str_len;
 const char *str = luaL_checklstring(L, 1, &str_len);
 GPtrArray *tokens = sql_tokens_new();
 GPtrArray **tokens_p;

 sql_tokenizer(tokens, str, str_len);

 tokens_p = lua_newuserdata(L, sizeof(tokens));
 *tokens_p = tokens;

 sql_tokenizer_lua_getmetatable(L);
 lua_setmetatable(L, -2);

 return 1;
}
