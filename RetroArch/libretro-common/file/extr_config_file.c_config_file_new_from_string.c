
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {size_t size; TYPE_1__* elems; } ;
struct config_file {int guaranteed_no_duplicates; struct config_entry_list* tail; struct config_entry_list* entries; int * path; scalar_t__ include_depth; int * includes; int * last; } ;
struct config_entry_list {int readonly; struct config_entry_list* next; int * value; int * key; } ;
typedef struct config_file config_file_t ;
struct TYPE_2__ {char* data; } ;


 int config_file_free (struct config_file*) ;
 int free (struct config_entry_list*) ;
 scalar_t__ malloc (int) ;
 scalar_t__ parse_line (struct config_file*,struct config_entry_list*,char*,int *) ;
 int * strdup (char const*) ;
 int string_is_empty (char const*) ;
 int string_list_free (struct string_list*) ;
 struct string_list* string_split (char const*,char*) ;

config_file_t *config_file_new_from_string(const char *from_string,
      const char *path)
{
   size_t i;
   struct string_list *lines = ((void*)0);
   struct config_file *conf = (struct config_file*)malloc(sizeof(*conf));
   if (!conf)
      return ((void*)0);

   if (!from_string)
      return conf;

   conf->path = ((void*)0);
   conf->entries = ((void*)0);
   conf->tail = ((void*)0);
   conf->last = ((void*)0);
   conf->includes = ((void*)0);
   conf->include_depth = 0;
   conf->guaranteed_no_duplicates = 0 ;

   if (!string_is_empty(path))
      conf->path = strdup(path);

   lines = string_split(from_string, "\n");
   if (!lines)
      return conf;

   for (i = 0; i < lines->size; i++)
   {
      struct config_entry_list *list = (struct config_entry_list*)
         malloc(sizeof(*list));
      char *line = lines->elems[i].data;

      if (!list)
      {
         string_list_free(lines);
         config_file_free(conf);
         return ((void*)0);
      }

      list->readonly = 0;
      list->key = ((void*)0);
      list->value = ((void*)0);
      list->next = ((void*)0);

      if (line && conf)
      {
         if (*line && parse_line(conf, list, line, ((void*)0)))
         {
            if (conf->entries)
               conf->tail->next = list;
            else
               conf->entries = list;

            conf->tail = list;
         }
      }

      if (list != conf->tail)
         free(list);
   }

   string_list_free(lines);

   return conf;
}
