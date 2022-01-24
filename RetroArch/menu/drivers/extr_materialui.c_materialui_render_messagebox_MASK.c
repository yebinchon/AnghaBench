#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {unsigned int width; unsigned int height; } ;
typedef  TYPE_5__ video_frame_info_t ;
struct string_list {int size; TYPE_1__* elems; } ;
struct TYPE_13__ {int /*<<< orphan*/  list_text; int /*<<< orphan*/  surface_background; } ;
struct TYPE_11__ {int font_height; int /*<<< orphan*/  font; } ;
struct TYPE_12__ {TYPE_2__ list; } ;
struct TYPE_15__ {double margin; TYPE_4__ colors; TYPE_3__ font_data; } ;
typedef  TYPE_6__ materialui_handle_t ;
struct TYPE_10__ {char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  TEXT_ALIGN_LEFT ; 
 int FUNC0 (int /*<<< orphan*/ ,char const*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int,int,int,double,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int,int,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct string_list*) ; 
 struct string_list* FUNC5 (char const*,char*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 size_t FUNC7 (char const*) ; 

__attribute__((used)) static void FUNC8(materialui_handle_t *mui,
      video_frame_info_t *video_info, int y_centre, const char *message)
{
   unsigned i;
   int x                    = 0;
   int y                    = 0;
   int longest_width        = 0;
   size_t longest_len       = 0;
   unsigned width           = video_info->width;
   unsigned height          = video_info->height;
   struct string_list *list = NULL;

   /* Sanity check */
   if (!mui || !mui->font_data.list.font)
      goto end;

   /* Split message into lines */
   list = FUNC5(message, "\n");

   if (!list || list->elems == 0)
      goto end;

   /* Get coordinates of message box centre */
   x = width / 2;
   y = (int)(y_centre - (list->size - 1) * (mui->font_data.list.font_height / 2));

   /* TODO/FIXME: Reduce text scale if width or height
    * are too large to fit on screen */

   /* Find the longest line width */
   for (i = 0; i < list->size; i++)
   {
      const char *line = list->elems[i].data;

      if (!FUNC3(line))
      {
         size_t len = FUNC7(line);

         if (len > longest_len)
         {
            longest_len   = len;
            longest_width = FUNC0(
                  mui->font_data.list.font, line, (unsigned)FUNC6(line), 1);
         }
      }
   }

   /* Draw message box background */
   FUNC1(
         video_info,
         x - longest_width / 2.0 - mui->margin * 2.0,
         y -  mui->font_data.list.font_height / 2.0 -  mui->margin * 2.0,
         longest_width + mui->margin * 4.0,
         mui->font_data.list.font_height * list->size + mui->margin * 4.0,
         width,
         height,
         mui->colors.surface_background);

   /* Print each line of the message */
   for (i = 0; i < list->size; i++)
   {
      const char *line = list->elems[i].data;

      if (!FUNC3(line))
         FUNC2(
               mui->font_data.list.font, line,
               x - longest_width/2.0,
               y + i *  mui->font_data.list.font_height + mui->font_data.list.font_height / 3,
               width, height, mui->colors.list_text,
               TEXT_ALIGN_LEFT, 1.0f, false, 0, true);
   }

end:
   if (list)
      FUNC4(list);
}