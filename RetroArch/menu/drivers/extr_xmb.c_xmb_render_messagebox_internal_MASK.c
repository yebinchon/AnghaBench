#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/ * list; } ;
struct TYPE_15__ {int margins_dialog; TYPE_8__* font; TYPE_2__ textures; scalar_t__ margins_slice; } ;
typedef  TYPE_3__ xmb_handle_t ;
struct TYPE_16__ {unsigned int width; unsigned int height; } ;
typedef  TYPE_4__ video_frame_info_t ;
struct string_list {int size; TYPE_1__* elems; } ;
struct TYPE_17__ {double size; } ;
struct TYPE_13__ {char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  TEXT_ALIGN_LEFT ; 
 size_t XMB_TEXTURE_DIALOG_SLICE ; 
 size_t XMB_TEXTURE_KEY_HOVER ; 
 int FUNC0 (TYPE_8__*,char const*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_8__*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,char const*,int,int,unsigned int,unsigned int,int,int /*<<< orphan*/ ,float,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int,scalar_t__,int,int,int,float,unsigned int,unsigned int,int /*<<< orphan*/ *,scalar_t__,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct string_list*) ; 
 struct string_list* FUNC10 (char const*,char*) ; 
 scalar_t__ FUNC11 (char const*) ; 
 scalar_t__ FUNC12 (char const*) ; 

__attribute__((used)) static void FUNC13(
      video_frame_info_t *video_info,
      xmb_handle_t *xmb, const char *message)
{
   unsigned i, y_position;
   int x, y, longest = 0, longest_width = 0;
   float line_height        = 0;
   unsigned width           = video_info->width;
   unsigned height          = video_info->height;
   struct string_list *list = !FUNC8(message)
      ? FUNC10(message, "\n") : NULL;

   if (!list || !xmb || !xmb->font)
   {
      if (list)
         FUNC9(list);
      return;
   }

   if (list->elems == 0)
      goto end;

   line_height      = xmb->font->size * 1.2;

   y_position       = height / 2;
   if (FUNC7())
      y_position    = height / 4;

   x                = width  / 2;
   y                = y_position - (list->size-1) * line_height / 2;

   /* find the longest line width */
   for (i = 0; i < list->size; i++)
   {
      const char *msg  = list->elems[i].data;
      int len          = (int)FUNC12(msg);

      if (len > longest)
      {
         longest       = len;
         longest_width = FUNC0(
               xmb->font, msg, (unsigned)FUNC11(msg), 1);
      }
   }

   FUNC1(video_info);

   FUNC4(
         video_info,
         x - longest_width/2 - xmb->margins_dialog,
         y + xmb->margins_slice - xmb->margins_dialog,
         256, 256,
         longest_width + xmb->margins_dialog * 2,
         line_height * list->size + xmb->margins_dialog * 2,
         width, height,
         NULL,
         xmb->margins_slice, 1.0,
         xmb->textures.list[XMB_TEXTURE_DIALOG_SLICE]);

   for (i = 0; i < list->size; i++)
   {
      const char *msg = list->elems[i].data;

      if (msg)
         FUNC3(xmb->font, msg,
               x - longest_width/2.0,
               y + (i+0.75) * line_height,
               width, height, 0x444444ff, TEXT_ALIGN_LEFT, 1.0f, false, 0, false);
   }

   if (FUNC7())
      FUNC2(
            xmb->textures.list[XMB_TEXTURE_KEY_HOVER],
            xmb->font,
            video_info,
            FUNC5(),
            FUNC6(),
            0xffffffff);

end:
   FUNC9(list);
}