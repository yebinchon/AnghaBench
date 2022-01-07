
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int message_background; int entries_icon; int entries_border; int selection; int selection_border; } ;
typedef TYPE_2__ ozone_theme_t ;
struct TYPE_9__ {int message_background; int cursor_alpha; int entries_checkmark; int entries_icon; int entries_border; int selection; int selection_border; } ;
struct TYPE_11__ {TYPE_2__* theme; TYPE_1__ theme_dynamic; } ;
typedef TYPE_3__ ozone_handle_t ;


 unsigned int last_color_theme ;
 int memcpy (int ,int ,int) ;
 TYPE_2__* ozone_default_theme ;
 int ozone_pure_white ;
 int ozone_restart_cursor_animation (TYPE_3__*) ;
 TYPE_2__ ozone_theme_dark ;
 TYPE_2__ ozone_theme_light ;

void ozone_set_color_theme(ozone_handle_t *ozone, unsigned color_theme)
{
   ozone_theme_t *theme = ozone_default_theme;

   if (!ozone)
      return;

   switch (color_theme)
   {
      case 1:
         theme = &ozone_theme_dark;
         break;
      case 0:
         theme = &ozone_theme_light;
         break;
      default:
         break;
   }

   ozone->theme = theme;

   memcpy(ozone->theme_dynamic.selection_border, ozone->theme->selection_border, sizeof(ozone->theme_dynamic.selection_border));
   memcpy(ozone->theme_dynamic.selection, ozone->theme->selection, sizeof(ozone->theme_dynamic.selection));
   memcpy(ozone->theme_dynamic.entries_border, ozone->theme->entries_border, sizeof(ozone->theme_dynamic.entries_border));
   memcpy(ozone->theme_dynamic.entries_icon, ozone->theme->entries_icon, sizeof(ozone->theme_dynamic.entries_icon));
   memcpy(ozone->theme_dynamic.entries_checkmark, ozone_pure_white, sizeof(ozone->theme_dynamic.entries_checkmark));
   memcpy(ozone->theme_dynamic.cursor_alpha, ozone_pure_white, sizeof(ozone->theme_dynamic.cursor_alpha));
   memcpy(ozone->theme_dynamic.message_background, ozone->theme->message_background, sizeof(ozone->theme_dynamic.message_background));

   ozone_restart_cursor_animation(ozone);

   last_color_theme = color_theme;
}
