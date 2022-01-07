
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PACKAGE ;
 char* g_build_filename (char const*,char*,int ,...) ;

int chassis_frontend_init_plugin_dir(char **_plugin_dir, const char *base_dir) {
 char *plugin_dir = *_plugin_dir;

 if (plugin_dir) return 0;




 plugin_dir = g_build_filename(base_dir, "lib", PACKAGE, "plugins", ((void*)0));


 *_plugin_dir = plugin_dir;

 return 0;
}
