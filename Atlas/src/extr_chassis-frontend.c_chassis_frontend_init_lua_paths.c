
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t guint ;
typedef int gchar ;
typedef scalar_t__ gboolean ;
struct TYPE_6__ {scalar_t__ len; char const* str; } ;
typedef TYPE_1__ GString ;


 int C (int ) ;
 scalar_t__ FALSE ;
 int G_STRLOC ;
 char* LUA_CPATH ;
 char* LUA_PATH ;
 int LUA_PATHSEP ;
 scalar_t__ TRUE ;
 int * chassis_frontend_get_default_lua_cpath (char const*,char const*) ;
 int * chassis_frontend_get_default_lua_path (char const*,char const*) ;
 scalar_t__ chassis_frontend_lua_setenv (char const*,char const*) ;
 int errno ;
 int g_critical (char*,int ,char const*,char const*,int ) ;
 int g_free (int *) ;
 int g_getenv (char const*) ;
 int g_strerror (int ) ;
 int g_string_append (TYPE_1__*,int *) ;
 int g_string_append_len (TYPE_1__*,int ) ;
 int g_string_free (TYPE_1__*,scalar_t__) ;
 TYPE_1__* g_string_new (int *) ;

__attribute__((used)) static int chassis_frontend_init_lua_paths(const char *set_path,
  const char *base_dir, char **lua_subdirs,
  gboolean is_lua_path) {
 const char *env_var = is_lua_path ? LUA_PATH : LUA_CPATH;
 int ret = 0;

 if (set_path) {
  if (0 != chassis_frontend_lua_setenv(env_var, set_path)) {
   g_critical("%s: setting %s = %s failed: %s", G_STRLOC,
     env_var, set_path,
     g_strerror(errno));
   ret = -1;
  }
 } else if (!g_getenv(env_var)) {
  GString *lua_path = g_string_new(((void*)0));
  guint i;
  gboolean all_in_one_folder = FALSE;
  for (i = 0; (all_in_one_folder && i == 0) || (!all_in_one_folder && lua_subdirs[i] != ((void*)0)); i++) {
   gchar *path;
   const char *sub_name = all_in_one_folder ? ((void*)0) : lua_subdirs[i];

   if (is_lua_path) {
    path = chassis_frontend_get_default_lua_path(base_dir, sub_name);
   } else {
    path = chassis_frontend_get_default_lua_cpath(base_dir, sub_name);
   }

   if (lua_path->len > 0) {
    g_string_append_len(lua_path, C(LUA_PATHSEP));
   }

   g_string_append(lua_path, path);

   g_free(path);
  }

  if (lua_path->len) {
   if (chassis_frontend_lua_setenv(env_var, lua_path->str)) {
    g_critical("%s: setting %s = %s failed: %s", G_STRLOC,
      env_var, lua_path->str,
      g_strerror(errno));
    ret = -1;
   }
  }
  g_string_free(lua_path, TRUE);
 }

 return 0;
}
