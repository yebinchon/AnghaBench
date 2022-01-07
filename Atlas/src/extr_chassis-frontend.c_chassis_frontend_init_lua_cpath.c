
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int chassis_frontend_init_lua_paths (char const*,char const*,char**,int ) ;

int chassis_frontend_init_lua_cpath(const char *set_path, const char *base_dir, char **lua_subdirs) {
 return chassis_frontend_init_lua_paths(set_path, base_dir, lua_subdirs, FALSE);
}
