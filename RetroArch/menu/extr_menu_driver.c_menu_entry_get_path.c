
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* path; } ;
typedef TYPE_1__ menu_entry_t ;



void menu_entry_get_path(menu_entry_t *entry, const char **path)
{
   if (!entry || !path)
      return;

   *path = entry->path;
}
