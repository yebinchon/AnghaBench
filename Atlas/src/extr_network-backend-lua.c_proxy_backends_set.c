
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_backends_t ;
typedef int lua_State ;
typedef int gsize ;
typedef int gchar ;


 int BACKEND_TYPE_RO ;
 int BACKEND_TYPE_RW ;
 int C (char*) ;
 int g_free (int *) ;
 int * g_strdup (int ) ;
 char* luaL_checklstring (int *,int,int *) ;
 scalar_t__ luaL_checkself (int *) ;
 int luaL_error (int *,char*,char const*) ;
 int lua_tointeger (int *,int) ;
 int lua_tostring (int *,int) ;
 int network_backends_add (int *,int *,int ) ;
 int network_backends_addclient (int *,int *) ;
 int network_backends_remove (int *,int ) ;
 int network_backends_removeclient (int *,int *) ;
 int network_backends_save (int *) ;
 scalar_t__ strleq (char const*,int ,int ) ;

__attribute__((used)) static int proxy_backends_set(lua_State *L) {
 network_backends_t *bs = *(network_backends_t **)luaL_checkself(L);
 gsize keysize = 0;
 const char *key = luaL_checklstring(L, 2, &keysize);

 if (strleq(key, keysize, C("addslave"))) {
  gchar *address = g_strdup(lua_tostring(L, -1));
  network_backends_add(bs, address, BACKEND_TYPE_RO);
  g_free(address);
 } else if (strleq(key, keysize, C("addmaster"))) {
  gchar *address = g_strdup(lua_tostring(L, -1));
  network_backends_add(bs, address, BACKEND_TYPE_RW);
  g_free(address);
 } else if (strleq(key, keysize, C("removebackend"))) {
  network_backends_remove(bs, lua_tointeger(L, -1));
 } else if (strleq(key, keysize, C("addclient"))) {
  gchar *address = g_strdup(lua_tostring(L, -1));
  network_backends_addclient(bs, address);
  g_free(address);
 } else if (strleq(key, keysize, C("removeclient"))) {
  gchar *address = g_strdup(lua_tostring(L, -1));
  network_backends_removeclient(bs, address);
  g_free(address);
 } else if (strleq(key, keysize, C("saveconfig"))) {
  network_backends_save(bs);
 } else {
  return luaL_error(L, "proxy.global.backends.%s is not writable", key);
 }
 return 1;
}
