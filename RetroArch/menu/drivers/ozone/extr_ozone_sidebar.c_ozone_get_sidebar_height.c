
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sidebar_entry_height; int sidebar_entry_padding_vertical; int sidebar_padding_vertical; } ;
struct TYPE_7__ {TYPE_1__ dimensions; TYPE_2__* horizontal_list; scalar_t__ system_tab_end; } ;
typedef TYPE_3__ ozone_handle_t ;
struct TYPE_6__ {scalar_t__ size; } ;



unsigned ozone_get_sidebar_height(ozone_handle_t *ozone)
{
   int entries = (int)(ozone->system_tab_end + 1 + (ozone->horizontal_list ? ozone->horizontal_list->size : 0));
   return entries * ozone->dimensions.sidebar_entry_height + (entries - 1) * ozone->dimensions.sidebar_entry_padding_vertical + ozone->dimensions.sidebar_padding_vertical +
         (ozone->horizontal_list && ozone->horizontal_list->size > 0 ? ozone->dimensions.sidebar_entry_padding_vertical + 1 : 0);
}
