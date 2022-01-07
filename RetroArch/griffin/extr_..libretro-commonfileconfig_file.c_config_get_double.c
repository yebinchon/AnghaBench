
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_entry_list {int value; } ;
typedef int config_file_t ;


 struct config_entry_list* config_get_entry (int *,char const*,int *) ;
 double strtod (int ,int *) ;

bool config_get_double(config_file_t *conf, const char *key, double *in)
{
   const struct config_entry_list *entry = config_get_entry(conf, key, ((void*)0));

   if (!entry)
      return 0;

   *in = strtod(entry->value, ((void*)0));
   return 1;
}
