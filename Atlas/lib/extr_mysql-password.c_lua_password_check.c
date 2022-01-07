
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char* luaL_checklstring (int *,int,size_t*) ;
 int lua_pushboolean (int *,int ) ;
 int network_mysqld_proto_password_check (char const*,size_t,char const*,size_t,char const*,size_t) ;

__attribute__((used)) static int lua_password_check(lua_State *L) {
 size_t challenge_len;
 const char *challenge = luaL_checklstring(L, 1, &challenge_len);
 size_t response_len;
 const char *response = luaL_checklstring(L, 2, &response_len);
 size_t dbl_hashed_password_len;
 const char *dbl_hashed_password = luaL_checklstring(L, 3, &dbl_hashed_password_len);

 lua_pushboolean(L, network_mysqld_proto_password_check(
   challenge, challenge_len,
   response, response_len,
   dbl_hashed_password, dbl_hashed_password_len));

 return 1;
}
