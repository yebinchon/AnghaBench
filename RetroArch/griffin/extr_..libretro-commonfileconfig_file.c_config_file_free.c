
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_include_list {struct config_include_list* path; struct config_include_list* next; scalar_t__ includes; struct config_include_list* key; struct config_include_list* value; struct config_include_list* entries; } ;
struct config_entry_list {struct config_entry_list* path; struct config_entry_list* next; scalar_t__ includes; struct config_entry_list* key; struct config_entry_list* value; struct config_entry_list* entries; } ;
typedef struct config_include_list config_file_t ;


 int free (struct config_include_list*) ;

void config_file_free(config_file_t *conf)
{
   struct config_include_list *inc_tmp = ((void*)0);
   struct config_entry_list *tmp = ((void*)0);
   if (!conf)
      return;

   tmp = conf->entries;
   while (tmp)
   {
      struct config_entry_list *hold = ((void*)0);
      if (tmp->key)
         free(tmp->key);
      if (tmp->value)
         free(tmp->value);

      tmp->value = ((void*)0);
      tmp->key = ((void*)0);

      hold = tmp;
      tmp = tmp->next;

      if (hold)
         free(hold);
   }

   inc_tmp = (struct config_include_list*)conf->includes;
   while (inc_tmp)
   {
      struct config_include_list *hold = ((void*)0);
      if (inc_tmp->path)
         free(inc_tmp->path);
      hold = (struct config_include_list*)inc_tmp;
      inc_tmp = inc_tmp->next;
      if (hold)
         free(hold);
   }

   if (conf->path)
      free(conf->path);
   free(conf);
}
