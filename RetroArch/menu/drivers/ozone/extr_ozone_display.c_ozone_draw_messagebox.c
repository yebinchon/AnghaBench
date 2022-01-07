
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_19__ {unsigned int width; unsigned int height; } ;
typedef TYPE_6__ video_frame_info_t ;
typedef int uint32_t ;
struct string_list {int size; TYPE_2__* elems; } ;
struct TYPE_18__ {float messagebox_alpha; } ;
struct TYPE_16__ {int footer; } ;
struct TYPE_14__ {int message_background; } ;
struct TYPE_20__ {TYPE_5__ animations; TYPE_4__* theme; TYPE_3__ fonts; int * icons_textures; TYPE_1__ theme_dynamic; scalar_t__ has_all_assets; } ;
typedef TYPE_7__ ozone_handle_t ;
struct TYPE_17__ {int text_rgba; } ;
struct TYPE_15__ {char* data; } ;


 int COLOR_TEXT_ALPHA (int ,int ) ;
 size_t OZONE_ENTRIES_ICONS_TEXTURE_DIALOG_SLICE ;
 int TEXT_ALIGN_LEFT ;
 int font_driver_get_message_width (int ,char const*,unsigned int,int) ;
 int menu_display_blend_begin (TYPE_6__*) ;
 int menu_display_draw_texture_slice (TYPE_6__*,int,int,int,int,int,float,unsigned int,unsigned int,int ,int,double,int ) ;
 int menu_display_set_alpha (int ,float) ;
 scalar_t__ menu_input_dialog_get_display_kb () ;
 int ozone_draw_text (TYPE_6__*,TYPE_7__*,char const*,int,int,int ,unsigned int,unsigned int,int ,int ,int) ;
 int string_is_empty (char const*) ;
 int string_list_free (struct string_list*) ;
 struct string_list* string_split (char const*,char*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ utf8len (char const*) ;

void ozone_draw_messagebox(ozone_handle_t *ozone,
      video_frame_info_t *video_info,
      const char *message)
{
   unsigned i, y_position;
   int x, y, longest = 0, longest_width = 0;
   float line_height = 0;
   unsigned width = video_info->width;
   unsigned height = video_info->height;
   struct string_list *list = !string_is_empty(message)
      ? string_split(message, "\n") : ((void*)0);

   if (!list || !ozone || !ozone->fonts.footer)
   {
      if (list)
         string_list_free(list);
      return;
   }

   if (list->elems == 0)
      goto end;

   line_height = 25;

   y_position = height / 2;
   if (menu_input_dialog_get_display_kb())
      y_position = height / 4;

   x = width / 2;
   y = y_position - (list->size-1) * line_height / 2;


   for (i = 0; i < list->size; i++)
   {
      const char *msg = list->elems[i].data;
      int len = (int)utf8len(msg);

      if (len > longest)
      {
         longest = len;
         longest_width = font_driver_get_message_width(
               ozone->fonts.footer, msg, (unsigned)strlen(msg), 1);
      }
   }

   menu_display_set_alpha(ozone->theme_dynamic.message_background, ozone->animations.messagebox_alpha);

   menu_display_blend_begin(video_info);

   if (ozone->has_all_assets)
      menu_display_draw_texture_slice(
         video_info,
         x - longest_width/2 - 48,
         y + 16 - 48,
         256, 256,
         longest_width + 48 * 2,
         line_height * list->size + 48 * 2,
         width, height,
         ozone->theme_dynamic.message_background,
         16, 1.0,
         ozone->icons_textures[OZONE_ENTRIES_ICONS_TEXTURE_DIALOG_SLICE]
      );

   for (i = 0; i < list->size; i++)
   {
      const char *msg = list->elems[i].data;

      if (msg)
         ozone_draw_text(video_info, ozone,
            msg,
            x - longest_width/2.0,
            y + (i+0.75) * line_height,
            TEXT_ALIGN_LEFT,
            width, height,
            ozone->fonts.footer,
            COLOR_TEXT_ALPHA(ozone->theme->text_rgba, (uint32_t)(ozone->animations.messagebox_alpha*255.0f)),
            0
         );
   }

end:
   string_list_free(list);
}
