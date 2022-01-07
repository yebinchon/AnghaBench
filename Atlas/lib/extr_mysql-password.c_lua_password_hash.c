
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
 int network_mysqld_proto_password_hash (int *,char const*,size_t) ;

__attribute__((used)) static int lua_password_hash(lua_State *L) {
 size_t password_len;
 const char *password = luaL_checklstring(L, 1, &password_len);
 GString *response;

 response = g_string_new(((void*)0));
 network_mysqld_proto_password_hash(response, password, password_len);

 lua_pushlstring(L, S(response));

 g_string_free(response, TRUE);

 return 1;
}
