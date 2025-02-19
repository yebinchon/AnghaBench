
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {unsigned int width; unsigned int height; } ;
typedef TYPE_5__ video_frame_info_t ;
struct string_list {int size; TYPE_1__* elems; } ;
struct TYPE_13__ {int list_text; int surface_background; } ;
struct TYPE_11__ {int font_height; int font; } ;
struct TYPE_12__ {TYPE_2__ list; } ;
struct TYPE_15__ {double margin; TYPE_4__ colors; TYPE_3__ font_data; } ;
typedef TYPE_6__ materialui_handle_t ;
struct TYPE_10__ {char* data; } ;


 int TEXT_ALIGN_LEFT ;
 int font_driver_get_message_width (int ,char const*,unsigned int,int) ;
 int menu_display_draw_quad (TYPE_5__*,int,int,int,double,unsigned int,unsigned int,int ) ;
 int menu_display_draw_text (int ,char const*,int,int,unsigned int,unsigned int,int ,int ,float,int,int ,int) ;
 int string_is_empty (char const*) ;
 int string_list_free (struct string_list*) ;
 struct string_list* string_split (char const*,char*) ;
 scalar_t__ strlen (char const*) ;
 size_t utf8len (char const*) ;

__attribute__((used)) static void materialui_render_messagebox(materialui_handle_t *mui,
      video_frame_info_t *video_info, int y_centre, const char *message)
{
   unsigned i;
   int x = 0;
   int y = 0;
   int longest_width = 0;
   size_t longest_len = 0;
   unsigned width = video_info->width;
   unsigned height = video_info->height;
   struct string_list *list = ((void*)0);


   if (!mui || !mui->font_data.list.font)
      goto end;


   list = string_split(message, "\n");

   if (!list || list->elems == 0)
      goto end;


   x = width / 2;
   y = (int)(y_centre - (list->size - 1) * (mui->font_data.list.font_height / 2));





   for (i = 0; i < list->size; i++)
   {
      const char *line = list->elems[i].data;

      if (!string_is_empty(line))
      {
         size_t len = utf8len(line);

         if (len > longest_len)
         {
            longest_len = len;
            longest_width = font_driver_get_message_width(
                  mui->font_data.list.font, line, (unsigned)strlen(line), 1);
         }
      }
   }


   menu_display_draw_quad(
         video_info,
         x - longest_width / 2.0 - mui->margin * 2.0,
         y - mui->font_data.list.font_height / 2.0 - mui->margin * 2.0,
         longest_width + mui->margin * 4.0,
         mui->font_data.list.font_height * list->size + mui->margin * 4.0,
         width,
         height,
         mui->colors.surface_background);


   for (i = 0; i < list->size; i++)
   {
      const char *line = list->elems[i].data;

      if (!string_is_empty(line))
         menu_display_draw_text(
               mui->font_data.list.font, line,
               x - longest_width/2.0,
               y + i * mui->font_data.list.font_height + mui->font_data.list.font_height / 3,
               width, height, mui->colors.list_text,
               TEXT_ALIGN_LEFT, 1.0f, 0, 0, 1);
   }

end:
   if (list)
      string_list_free(list);
}
