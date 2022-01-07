
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int settings_t ;
struct TYPE_3__ {unsigned int landscape_entry_margin; int last_landscape_layout_optimization; scalar_t__ last_height; scalar_t__ nav_bar_layout_width; scalar_t__ last_width; int list_view_type; scalar_t__ is_portrait; } ;
typedef TYPE_1__ materialui_handle_t ;
__attribute__((used)) static void materialui_set_landscape_optimisations_enable(
      materialui_handle_t *mui, settings_t *settings)
{
   bool optimize_landscape_layout = 0;
   mui->landscape_entry_margin = 0;


   if (mui->is_portrait)
      return;



   switch (mui->last_landscape_layout_optimization)
   {
      case 136:
         optimize_landscape_layout = 1;
         break;
      case 134:

         switch (mui->list_view_type)
         {
            case 128:
            case 129:
            case 130:
            case 131:
               optimize_landscape_layout = 0;
               break;
            case 132:
            case 133:
            default:
               optimize_landscape_layout = 1;
               break;
         }

         break;

      case 135:
      default:
         optimize_landscape_layout = 0;
         break;
   }


   if (optimize_landscape_layout)
   {



      const float base_aspect = 4.0f / 3.0f;
      float landscape_margin =
            ((float)(mui->last_width - mui->nav_bar_layout_width) -
                  (base_aspect * (float)mui->last_height)) / 2.0f;


      if (landscape_margin > 1.0f)
         mui->landscape_entry_margin = (unsigned)landscape_margin;
   }
}
