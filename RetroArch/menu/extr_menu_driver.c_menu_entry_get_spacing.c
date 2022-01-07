
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spacing; } ;
typedef TYPE_1__ menu_entry_t ;



unsigned menu_entry_get_spacing(menu_entry_t *entry)
{
   if (entry)
      return entry->spacing;
   return 0;
}
