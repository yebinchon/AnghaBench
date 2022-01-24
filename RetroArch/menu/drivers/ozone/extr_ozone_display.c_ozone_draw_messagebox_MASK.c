#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {unsigned int width; unsigned int height; } ;
typedef  TYPE_6__ video_frame_info_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct string_list {int size; TYPE_2__* elems; } ;
struct TYPE_18__ {float messagebox_alpha; } ;
struct TYPE_16__ {int /*<<< orphan*/  footer; } ;
struct TYPE_14__ {int /*<<< orphan*/  message_background; } ;
struct TYPE_20__ {TYPE_5__ animations; TYPE_4__* theme; TYPE_3__ fonts; int /*<<< orphan*/ * icons_textures; TYPE_1__ theme_dynamic; scalar_t__ has_all_assets; } ;
typedef  TYPE_7__ ozone_handle_t ;
struct TYPE_17__ {int /*<<< orphan*/  text_rgba; } ;
struct TYPE_15__ {char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t OZONE_ENTRIES_ICONS_TEXTURE_DIALOG_SLICE ; 
 int /*<<< orphan*/  TEXT_ALIGN_LEFT ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int,int,int,int,int,float,unsigned int,unsigned int,int /*<<< orphan*/ ,int,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,float) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,TYPE_7__*,char const*,int,int,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct string_list*) ; 
 struct string_list* FUNC9 (char const*,char*) ; 
 scalar_t__ FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (char const*) ; 

void FUNC12(ozone_handle_t *ozone,
      video_frame_info_t *video_info,
      const char *message)
{
   unsigned i, y_position;
   int x, y, longest = 0, longest_width = 0;
   float line_height        = 0;
   unsigned width           = video_info->width;
   unsigned height          = video_info->height;
   struct string_list *list = !FUNC7(message)
      ? FUNC9(message, "\n") : NULL;

   if (!list || !ozone || !ozone->fonts.footer)
   {
      if (list)
         FUNC8(list);
      return;
   }

   if (list->elems == 0)
      goto end;

   line_height      = 25;

   y_position       = height / 2;
   if (FUNC5())
      y_position    = height / 4;

   x                = width  / 2;
   y                = y_position - (list->size-1) * line_height / 2;

   /* find the longest line width */
   for (i = 0; i < list->size; i++)
   {
      const char *msg  = list->elems[i].data;
      int len          = (int)FUNC11(msg);

      if (len > longest)
      {
         longest       = len;
         longest_width = FUNC1(
               ozone->fonts.footer, msg, (unsigned)FUNC10(msg), 1);
      }
   }

   FUNC4(ozone->theme_dynamic.message_background, ozone->animations.messagebox_alpha);

   FUNC2(video_info);

   if (ozone->has_all_assets) /* avoid drawing a black box if there's no assets */
      FUNC3(
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
         FUNC6(video_info, ozone,
            msg,
            x - longest_width/2.0,
            y + (i+0.75) * line_height,
            TEXT_ALIGN_LEFT,
            width, height,
            ozone->fonts.footer,
            FUNC0(ozone->theme->text_rgba, (uint32_t)(ozone->animations.messagebox_alpha*255.0f)),
            false
         );
   }

end:
   FUNC8(list);
}