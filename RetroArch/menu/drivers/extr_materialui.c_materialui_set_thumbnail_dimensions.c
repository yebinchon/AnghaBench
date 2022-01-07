
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int font_height; } ;
struct TYPE_6__ {int font_height; } ;
struct TYPE_8__ {TYPE_2__ hint; TYPE_1__ list; } ;
struct TYPE_9__ {int list_view_type; int thumbnail_height_max; int icon_size; unsigned int thumbnail_width_max; int dip_base_unit_size; int margin; int landscape_entry_margin; scalar_t__ nav_bar_layout_width; scalar_t__ last_width; TYPE_3__ font_data; } ;
typedef TYPE_4__ materialui_handle_t ;
 float MUI_THUMBNAIL_DEFAULT_ASPECT_RATIO ;

__attribute__((used)) static void materialui_set_thumbnail_dimensions(materialui_handle_t *mui)
{
   switch (mui->list_view_type)
   {
      case 128:


         mui->thumbnail_height_max = mui->icon_size;


         mui->thumbnail_width_max =
               (unsigned)(((float)mui->thumbnail_height_max *
                     MUI_THUMBNAIL_DEFAULT_ASPECT_RATIO) + 0.5f);

         break;

      case 129:






         mui->thumbnail_height_max =
               mui->font_data.list.font_height +
               (3 * mui->font_data.hint.font_height) +
               (mui->dip_base_unit_size / 10);






         mui->thumbnail_width_max =
               (unsigned)(((float)mui->thumbnail_height_max *
                     MUI_THUMBNAIL_DEFAULT_ASPECT_RATIO) + 0.5f);

         break;

      case 130:






         mui->thumbnail_height_max =
               (mui->font_data.list.font_height +
                (3 * mui->font_data.hint.font_height)) * 2;


         mui->thumbnail_width_max =
               (unsigned)(((float)mui->thumbnail_height_max *
                     MUI_THUMBNAIL_DEFAULT_ASPECT_RATIO) + 0.5f);

         break;

      case 131:
         {







            int usable_width =
                  (int)mui->last_width - (int)(mui->margin * 3) -
                  (int)(mui->landscape_entry_margin * 2) - (int)mui->nav_bar_layout_width;


            if (usable_width < 2)
            {
               mui->thumbnail_width_max = 0;
               mui->thumbnail_height_max = 0;
            }


            mui->thumbnail_width_max = (usable_width >> 1);


            mui->thumbnail_height_max =
                  (unsigned)(((float)mui->thumbnail_width_max *
                        (1.0f / MUI_THUMBNAIL_DEFAULT_ASPECT_RATIO)) + 0.5f);
         }
         break;

      case 132:
      case 133:
      default:


         mui->thumbnail_height_max = 0;
         mui->thumbnail_width_max = 0;
         break;
   }
}
