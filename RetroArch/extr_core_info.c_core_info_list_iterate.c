
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int config_file_t ;


 int PATH_MAX_LENGTH ;
 int * config_file_new_from_path_to_string (char*) ;
 int fill_pathname_base_noext (char*,char const*,size_t) ;
 int fill_pathname_join (char*,char const*,char*,size_t) ;
 int free (char*) ;
 scalar_t__ malloc (size_t) ;
 scalar_t__ path_is_valid (char*) ;
 int strlcat (char*,char*,size_t) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static config_file_t *core_info_list_iterate(
      const char *current_path,
      const char *path_basedir)
{
   size_t info_path_base_size = PATH_MAX_LENGTH * sizeof(char);
   char *info_path_base = ((void*)0);
   char *info_path = ((void*)0);
   config_file_t *conf = ((void*)0);

   if (!current_path)
      return ((void*)0);

   info_path_base = (char*)malloc(info_path_base_size);

   info_path_base[0] = '\0';

   fill_pathname_base_noext(info_path_base,
         current_path,
         info_path_base_size);
   strlcat(info_path_base, ".info", info_path_base_size);

   info_path = (char*)malloc(info_path_base_size);
   fill_pathname_join(info_path,
         path_basedir,
         info_path_base, info_path_base_size);
   free(info_path_base);
   info_path_base = ((void*)0);

   if (path_is_valid(info_path))
      conf = config_file_new_from_path_to_string(info_path);
   free(info_path);

   return conf;
}
