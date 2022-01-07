
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct config_include_list {char* path; struct config_include_list* next; } ;
struct config_entry_list {char* key; char* value; struct config_entry_list* next; int readonly; } ;
struct TYPE_3__ {struct config_entry_list* entries; struct config_include_list* includes; } ;
typedef TYPE_1__ config_file_t ;
typedef int FILE ;


 int config_sort_compare_func ;
 int fprintf (int *,char*,char*,...) ;
 struct config_entry_list* merge_sort_linked_list (struct config_entry_list*,int ) ;

void config_file_dump(config_file_t *conf, FILE *file, bool sort)
{
   struct config_entry_list *list = ((void*)0);
   struct config_include_list *includes = conf->includes;

   while (includes)
   {
      fprintf(file, "#include \"%s\"\n", includes->path);
      includes = includes->next;
   }

   if (sort)
      list = merge_sort_linked_list((struct config_entry_list*)
            conf->entries, config_sort_compare_func);
   else
      list = (struct config_entry_list*)conf->entries;

   conf->entries = list;

   while (list)
   {
      if (!list->readonly && list->key)
         fprintf(file, "%s = \"%s\"\n", list->key, list->value);
      list = list->next;
   }
}
