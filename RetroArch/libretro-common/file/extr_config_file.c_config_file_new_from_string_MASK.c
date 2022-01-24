#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct string_list {size_t size; TYPE_1__* elems; } ;
struct config_file {int guaranteed_no_duplicates; struct config_entry_list* tail; struct config_entry_list* entries; int /*<<< orphan*/ * path; scalar_t__ include_depth; int /*<<< orphan*/ * includes; int /*<<< orphan*/ * last; } ;
struct config_entry_list {int readonly; struct config_entry_list* next; int /*<<< orphan*/ * value; int /*<<< orphan*/ * key; } ;
typedef  struct config_file config_file_t ;
struct TYPE_2__ {char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct config_file*) ; 
 int /*<<< orphan*/  FUNC1 (struct config_entry_list*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct config_file*,struct config_entry_list*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct string_list*) ; 
 struct string_list* FUNC7 (char const*,char*) ; 

config_file_t *FUNC8(const char *from_string,
      const char *path)
{
   size_t i;
   struct string_list *lines = NULL;
   struct config_file *conf  = (struct config_file*)FUNC2(sizeof(*conf));
   if (!conf)
      return NULL;

   if (!from_string)
      return conf;

   conf->path                     = NULL;
   conf->entries                  = NULL;
   conf->tail                     = NULL;
   conf->last                     = NULL;
   conf->includes                 = NULL;
   conf->include_depth            = 0;
   conf->guaranteed_no_duplicates = false ;

   if (!FUNC5(path))
      conf->path                  = FUNC4(path);

   lines                          = FUNC7(from_string, "\n");
   if (!lines)
      return conf;

   for (i = 0; i < lines->size; i++)
   {
      struct config_entry_list *list = (struct config_entry_list*)
         FUNC2(sizeof(*list));
      char                    *line  = lines->elems[i].data;

      if (!list)
      {
         FUNC6(lines);
         FUNC0(conf);
         return NULL;
      }

      list->readonly  = false;
      list->key       = NULL;
      list->value     = NULL;
      list->next      = NULL;

      if (line && conf)
      {
         if (*line && FUNC3(conf, list, line, NULL))
         {
            if (conf->entries)
               conf->tail->next = list;
            else
               conf->entries    = list;

            conf->tail          = list;
         }
      }

      if (list != conf->tail)
         FUNC1(list);
   }

   FUNC6(lines);

   return conf;
}