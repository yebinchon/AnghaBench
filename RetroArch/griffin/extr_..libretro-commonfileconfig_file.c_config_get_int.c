
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_entry_list {int value; } ;
typedef int config_file_t ;


 struct config_entry_list* config_get_entry (int *,char const*,int *) ;
 scalar_t__ errno ;
 scalar_t__ strtol (int ,int *,int ) ;

bool config_get_int(config_file_t *conf, const char *key, int *in)
{
   const struct config_entry_list *entry = config_get_entry(conf, key, ((void*)0));
   errno = 0;

   if (entry)
   {
      int val = (int)strtol(entry->value, ((void*)0), 0);

      if (errno == 0)
      {
         *in = val;
         return 1;
      }
   }

   return 0;
}
