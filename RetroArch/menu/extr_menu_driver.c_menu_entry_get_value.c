
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* password_value; char* value; } ;
typedef TYPE_1__ menu_entry_t ;


 scalar_t__ menu_entry_is_password (TYPE_1__*) ;

void menu_entry_get_value(menu_entry_t *entry, const char **value)
{
   if (!entry || !value)
      return;

   if (menu_entry_is_password(entry))
      *value = entry->password_value;
   else
      *value = entry->value;
}
