#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct config_entry_list {int readonly; struct config_entry_list* next; void* value; void* key; } ;
struct TYPE_4__ {struct config_entry_list* last; struct config_entry_list* entries; scalar_t__ guaranteed_no_duplicates; } ;
typedef  TYPE_1__ config_file_t ;

/* Variables and functions */
 struct config_entry_list* FUNC0 (TYPE_1__*,char const*,struct config_entry_list**) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 (int) ; 
 void* FUNC3 (char const*) ; 

void FUNC4(config_file_t *conf, const char *key, const char *val)
{
   struct config_entry_list *last  = (conf->guaranteed_no_duplicates && conf->last) ? conf->last : conf->entries;
   struct config_entry_list *entry = conf->guaranteed_no_duplicates?NULL:FUNC0(conf, key, &last);

   if (entry && !entry->readonly)
   {
      if (entry->value)
         FUNC1(entry->value);
      entry->value = FUNC3(val);
      return;
   }

   if (!val)
      return;

   entry = (struct config_entry_list*)FUNC2(sizeof(*entry));
   if (!entry)
      return;

   entry->readonly  = false;
   entry->key       = FUNC3(key);
   entry->value     = FUNC3(val);
   entry->next      = NULL;

   if (last)
      last->next    = entry;
   else
      conf->entries = entry;

   conf->last       = entry;
}