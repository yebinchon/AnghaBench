
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ enum_idx; } ;
typedef TYPE_1__ menu_entry_t ;


 scalar_t__ MENU_ENUM_LABEL_CHEEVOS_PASSWORD ;

bool menu_entry_is_password(menu_entry_t *entry)
{
   return entry->enum_idx == MENU_ENUM_LABEL_CHEEVOS_PASSWORD;
}
