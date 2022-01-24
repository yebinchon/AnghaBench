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
struct config_entry_list {int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  config_file_t ;

/* Variables and functions */
 struct config_entry_list* FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 

bool FUNC2(config_file_t *conf, const char *key, bool *in)
{
   const struct config_entry_list *entry = FUNC0(conf, key, NULL);

   if (entry)
   {
      if (FUNC1(entry->value, "true"))
         *in = true;
      else if (FUNC1(entry->value, "1"))
         *in = true;
      else if (FUNC1(entry->value, "false"))
         *in = false;
      else if (FUNC1(entry->value, "0"))
         *in = false;
      else
         return false;
   }

   return entry != NULL;
}