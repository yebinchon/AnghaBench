
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int token_id; int text; } ;
typedef TYPE_1__ sql_token ;
typedef int lua_State ;


 int C (char*) ;
 int S (int ) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 scalar_t__ luaL_checkself (int *) ;
 int luaL_error (int *,char*,char const*) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushlstring (int *,char const*,...) ;
 char* sql_token_get_name (int ,size_t*) ;
 scalar_t__ strleq (char const*,size_t,int ) ;

__attribute__((used)) static int proxy_tokenize_token_get(lua_State *L) {
 sql_token *token = *(sql_token **)luaL_checkself(L);
 size_t keysize;
 const char *key = luaL_checklstring(L, 2, &keysize);
    if (strleq(key, keysize, C("text"))) {
        lua_pushlstring(L, S(token->text));
        return 1;
    } else if (strleq(key, keysize, C("token_id"))) {
        lua_pushinteger(L, token->token_id);
        return 1;
    } else if (strleq(key, keysize, C("token_name"))) {
        size_t token_name_len = 0;
        const char *token_name = sql_token_get_name(token->token_id, &token_name_len);
        lua_pushlstring(L, token_name, token_name_len);
        return 1;
    } else {
        luaL_error(L, "tokens[...] has no %s field", key);
    }

 return 0;
}
