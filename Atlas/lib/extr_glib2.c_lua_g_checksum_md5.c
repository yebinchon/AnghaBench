
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int guchar ;
typedef int GChecksum ;


 int G_CHECKSUM_MD5 ;
 int g_checksum_free (int *) ;
 int g_checksum_get_string (int *) ;
 int * g_checksum_new (int ) ;
 int g_checksum_update (int *,int *,size_t) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int lua_pushstring (int *,int ) ;

__attribute__((used)) static int lua_g_checksum_md5 (lua_State *L) {
 size_t str_len;
 const char *str = luaL_checklstring (L, 1, &str_len);
 GChecksum *cs;

 cs = g_checksum_new(G_CHECKSUM_MD5);

 g_checksum_update(cs, (guchar *)str, str_len);

 lua_pushstring(L, g_checksum_get_string(cs));

 g_checksum_free(cs);

 return 1;
}
