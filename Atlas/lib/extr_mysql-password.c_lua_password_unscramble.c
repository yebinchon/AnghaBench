
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int GString ;


 int S (int *) ;
 int TRUE ;
 int g_string_free (int *,int ) ;
 int * g_string_new (int *) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int lua_pushlstring (int *,int ) ;
 int network_mysqld_proto_password_unscramble (int *,char const*,size_t,char const*,size_t,char const*,size_t) ;

__attribute__((used)) static int lua_password_unscramble(lua_State *L) {
 size_t challenge_len;
 const char *challenge = luaL_checklstring(L, 1, &challenge_len);
 size_t response_len;
 const char *response = luaL_checklstring(L, 2, &response_len);
 size_t dbl_hashed_password_len;
 const char *dbl_hashed_password = luaL_checklstring(L, 3, &dbl_hashed_password_len);

 GString *hashed_password = g_string_new(((void*)0));

 network_mysqld_proto_password_unscramble(
   hashed_password,
   challenge, challenge_len,
   response, response_len,
   dbl_hashed_password, dbl_hashed_password_len);

 lua_pushlstring(L, S(hashed_password));

 g_string_free(hashed_password, TRUE);

 return 1;
}
