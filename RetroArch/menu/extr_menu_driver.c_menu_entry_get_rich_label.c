
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* rich_label; char* path; } ;
typedef TYPE_1__ menu_entry_t ;


 int string_is_empty (char*) ;

void menu_entry_get_rich_label(menu_entry_t *entry, const char **rich_label)
{
   if (!entry || !rich_label)
      return;

   if (!string_is_empty(entry->rich_label))
      *rich_label = entry->rich_label;
   else
      *rich_label = entry->path;
}
