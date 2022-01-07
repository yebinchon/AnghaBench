
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* g_build_filename (char const*,char*,char const*,char*,char*,int *) ;

char *chassis_frontend_get_default_lua_path(const char *base_dir, const char *prg_name) {
 return g_build_filename(base_dir, "lib", prg_name, "lua", "?.lua", ((void*)0));
}
