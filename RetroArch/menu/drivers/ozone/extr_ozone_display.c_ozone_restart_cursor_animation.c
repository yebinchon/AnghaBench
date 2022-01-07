
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cursor_state; int cursor_border; } ;
struct TYPE_8__ {TYPE_2__* theme; TYPE_1__ theme_dynamic; int has_all_assets; } ;
typedef TYPE_3__ ozone_handle_t ;
typedef uintptr_t menu_animation_ctx_tag ;
struct TYPE_7__ {int cursor_border_1; int cursor_border_0; } ;


 int memcpy (int ,int ,int) ;
 int menu_animation_kill_by_tag (uintptr_t*) ;
 int ozone_animate_cursor (TYPE_3__*,int ,int ) ;
 int ozone_default_theme ;

void ozone_restart_cursor_animation(ozone_handle_t *ozone)
{
   menu_animation_ctx_tag tag = (uintptr_t) &ozone_default_theme;

   if (!ozone->has_all_assets)
      return;

   ozone->theme_dynamic.cursor_state = 1;
   memcpy(ozone->theme_dynamic.cursor_border, ozone->theme->cursor_border_0, sizeof(ozone->theme_dynamic.cursor_border));
   menu_animation_kill_by_tag(&tag);

   ozone_animate_cursor(ozone, ozone->theme_dynamic.cursor_border, ozone->theme->cursor_border_1);
}
