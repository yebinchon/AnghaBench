
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int menu_materialui_dual_thumbnail_list_view_enable; } ;
struct TYPE_11__ {TYPE_1__ bools; } ;
typedef TYPE_3__ settings_t ;
struct TYPE_10__ {scalar_t__ width; } ;
struct TYPE_12__ {int list_view_type; int secondary_thumbnail_enabled; int margin; int landscape_entry_margin; int thumbnail_width_max; TYPE_2__ scrollbar; int is_portrait; scalar_t__ nav_bar_layout_width; scalar_t__ last_width; } ;
typedef TYPE_4__ materialui_handle_t ;
 int materialui_force_enable_secondary_thumbnail (TYPE_4__*,TYPE_3__*) ;

__attribute__((used)) static void materialui_set_secondary_thumbnail_enable(
      materialui_handle_t *mui, settings_t *settings)
{
   switch (mui->list_view_type)
   {
      case 128:
      case 129:
      case 130:

         {
            int usable_width = 0;
            int thumbnail_margin = 0;


            mui->secondary_thumbnail_enabled = 0;



            if (!settings->bools.menu_materialui_dual_thumbnail_list_view_enable)
               return;



            if (!materialui_force_enable_secondary_thumbnail(mui, settings))
               return;






            usable_width =
                  (int)mui->last_width - (int)(mui->margin * 2) -
                  (int)(mui->landscape_entry_margin * 2) - (int)mui->nav_bar_layout_width;



            if (mui->is_portrait)
               thumbnail_margin = (int)mui->scrollbar.width;


            else
               if (mui->landscape_entry_margin < mui->margin)
                  thumbnail_margin = (int)(mui->margin - mui->landscape_entry_margin);



            usable_width -= 2 * ((int)mui->thumbnail_width_max + thumbnail_margin);




            mui->secondary_thumbnail_enabled =
                  usable_width > (int)(mui->thumbnail_width_max * 2);
         }
         break;
      case 131:







         materialui_force_enable_secondary_thumbnail(mui, settings);
         mui->secondary_thumbnail_enabled = 1;
         break;
      case 132:
      case 133:
      default:

         mui->secondary_thumbnail_enabled = 0;
         break;
   }
}
