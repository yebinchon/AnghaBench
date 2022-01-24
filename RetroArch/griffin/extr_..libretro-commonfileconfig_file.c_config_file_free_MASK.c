#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct config_include_list {struct config_include_list* path; struct config_include_list* next; scalar_t__ includes; struct config_include_list* key; struct config_include_list* value; struct config_include_list* entries; } ;
struct config_entry_list {struct config_entry_list* path; struct config_entry_list* next; scalar_t__ includes; struct config_entry_list* key; struct config_entry_list* value; struct config_entry_list* entries; } ;
typedef  struct config_include_list config_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct config_include_list*) ; 

void FUNC1(config_file_t *conf)
{
   struct config_include_list *inc_tmp = NULL;
   struct config_entry_list *tmp       = NULL;
   if (!conf)
      return;

   tmp = conf->entries;
   while (tmp)
   {
      struct config_entry_list *hold = NULL;
      if (tmp->key)
         FUNC0(tmp->key);
      if (tmp->value)
         FUNC0(tmp->value);

      tmp->value = NULL;
      tmp->key   = NULL;

      hold       = tmp;
      tmp        = tmp->next;

      if (hold)
         FUNC0(hold);
   }

   inc_tmp = (struct config_include_list*)conf->includes;
   while (inc_tmp)
   {
      struct config_include_list *hold = NULL;
      if (inc_tmp->path)
         FUNC0(inc_tmp->path);
      hold    = (struct config_include_list*)inc_tmp;
      inc_tmp = inc_tmp->next;
      if (hold)
         FUNC0(hold);
   }

   if (conf->path)
      FUNC0(conf->path);
   FUNC0(conf);
}