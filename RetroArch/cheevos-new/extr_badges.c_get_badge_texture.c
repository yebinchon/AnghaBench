
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cheevos_badges_enable; } ;
struct TYPE_6__ {TYPE_1__ bools; } ;
typedef TYPE_2__ settings_t ;
typedef int menu_texture_item ;
struct TYPE_7__ {int * menu_texture_list; } ;


 TYPE_4__ badges_ctx ;
 TYPE_2__* config_get_ptr () ;

menu_texture_item get_badge_texture(int id)
{
   settings_t *settings = config_get_ptr();
   if (!settings || !settings->bools.cheevos_badges_enable)
      return (menu_texture_item)((void*)0);

   return badges_ctx.menu_texture_list[id];
}
