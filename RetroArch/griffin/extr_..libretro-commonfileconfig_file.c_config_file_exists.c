
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int config_file_t ;


 int config_file_free (int *) ;
 int * config_file_new (char const*) ;

bool config_file_exists(const char *path)
{
   config_file_t *config = config_file_new(path);
   if (!config)
      return 0;

   config_file_free(config);
   return 1;
}
