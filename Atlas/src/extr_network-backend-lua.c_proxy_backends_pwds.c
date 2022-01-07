
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_backends_t ;
typedef int lua_State ;
typedef int guint ;
typedef int gchar ;
typedef int gboolean ;




 int ERR_USER_EXIST ;
 int ERR_USER_NOT_EXIST ;
 int FALSE ;

 int TRUE ;
 int g_assert_not_reached () ;
 scalar_t__ luaL_checkself (int *) ;
 int lua_pushinteger (int *,int) ;
 int lua_tointeger (int *,int) ;
 int * lua_tostring (int *,int) ;
 int network_backends_addpwd (int *,int *,int *,int ) ;
 int network_backends_removepwd (int *,int *) ;
 int proxy_pwds_exist (int *,int *) ;

__attribute__((used)) static int proxy_backends_pwds(lua_State *L) {
 network_backends_t *bs = *(network_backends_t **)luaL_checkself(L);
 guint type = lua_tointeger(L, -1);
 gchar *pwd = lua_tostring(L, -2);
 gchar *user = lua_tostring(L, -3);

 gboolean is_user_exist = proxy_pwds_exist(bs, user);
 int ret = -1;

 switch (type) {
 case 129:
  if (is_user_exist) {
   ret = ERR_USER_EXIST;
  } else {
   ret = network_backends_addpwd(bs, user, pwd, FALSE);
  }
  break;

 case 130:
  if (is_user_exist) {
   ret = ERR_USER_EXIST;
  } else {
   ret = network_backends_addpwd(bs, user, pwd, TRUE);
  }
  break;

 case 128:
  if (!is_user_exist) {
   ret = ERR_USER_NOT_EXIST;
  } else {
   ret = network_backends_removepwd(bs, user);
  }
  break;

 default:
  g_assert_not_reached();
 }

 lua_pushinteger(L, ret);
 return 1;
}
