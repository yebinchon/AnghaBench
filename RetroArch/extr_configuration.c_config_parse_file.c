
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int global_t ;


 int RARCH_ERR (char*,char const*) ;
 int RARCH_LOG (char*,...) ;
 int RARCH_PATH_CONFIG ;
 int config_get_ptr () ;
 int config_load_file (int *,char const*,int ) ;
 char* path_get (int ) ;
 scalar_t__ path_is_empty (int ) ;

void config_parse_file(void *data)
{
   global_t *global = (global_t*)data;
   if (path_is_empty(RARCH_PATH_CONFIG))
   {
      RARCH_LOG("[config] Loading default config.\n");
   }

   {
      const char *config_path = path_get(RARCH_PATH_CONFIG);
      RARCH_LOG("[config] loading config from: %s.\n", config_path);

      if (!config_load_file(global, config_path, config_get_ptr()))
      {
         RARCH_ERR("[config] couldn't find config at path: \"%s\"\n",
               config_path);
      }
   }
}
