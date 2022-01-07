
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* label; } ;
typedef TYPE_1__ menu_entry_t ;



void menu_entry_get_label(menu_entry_t *entry, const char **label)
{
   if (!entry || !label)
      return;

   *label = entry->label;
}
