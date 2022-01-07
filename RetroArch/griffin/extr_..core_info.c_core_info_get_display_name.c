
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int config_file_t ;


 int config_file_free (int *) ;
 int * config_file_new_from_path_to_string (char const*) ;
 scalar_t__ config_get_string (int *,char*,char**) ;
 int free (char*) ;
 int strlcpy (char*,char*,size_t) ;

bool core_info_get_display_name(const char *path, char *s, size_t len)
{
   char *tmp = ((void*)0);
   config_file_t *conf = config_file_new_from_path_to_string(path);

   if (!conf)
      return 0;

   if (config_get_string(conf, "display_name", &tmp))
   {
      strlcpy(s, tmp, len);
      free(tmp);
   }

   config_file_free(conf);
   return 1;
}
