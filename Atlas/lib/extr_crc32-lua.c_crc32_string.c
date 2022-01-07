
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 unsigned int crc32 (char const*,size_t) ;
 int g_debug (char*,...) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int lua_pushnumber (int *,unsigned int) ;

int crc32_string(lua_State *L) {
 size_t str_len;
 const char *str = luaL_checklstring(L, 1, &str_len);
    g_debug("string:%s, length:%d", str, str_len);

 unsigned int key = crc32(str, str_len);
    g_debug("crc key:%ld", key);


    lua_pushnumber(L, key);

    return 1;
}
