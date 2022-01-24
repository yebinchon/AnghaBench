#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  msg_widget ;
typedef  int /*<<< orphan*/  menu_widget_msg_t ;
typedef  uintptr_t menu_animation_ctx_tag ;
struct TYPE_8__ {size_t size; } ;
struct TYPE_7__ {int /*<<< orphan*/  carr; } ;
struct TYPE_6__ {int /*<<< orphan*/  carr; } ;

/* Variables and functions */
 TYPE_3__* current_msgs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__ font_raster_bold ; 
 TYPE_1__ font_raster_regular ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 float generic_message_alpha ; 
 float libretro_message_alpha ; 
 int /*<<< orphan*/  libretro_message_timer ; 
 int /*<<< orphan*/  FUNC7 (uintptr_t*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 uintptr_t menu_widgets_generic_tag ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * msg_queue ; 
 scalar_t__ msg_queue_tasks_count ; 
 float screenshot_alpha ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 float volume_alpha ; 
 uintptr_t volume_tag ; 

void FUNC13(void)
{
   size_t i;
   menu_animation_ctx_tag libretro_tag;

   /* Kill any pending animation */
   FUNC7(&volume_tag);
   FUNC7(&menu_widgets_generic_tag);

   /* Purge everything from the fifo */
   if (msg_queue)
   {
      while (FUNC2(msg_queue) > 0)
      {
         menu_widget_msg_t *msg_widget;

         FUNC1(msg_queue, &msg_widget, sizeof(msg_widget));

         FUNC10(msg_widget, false);
         FUNC6(msg_widget);
      }

      FUNC0(msg_queue);
      msg_queue = NULL;
   }

   /* Purge everything from the list */
   if (current_msgs)
   {
      for (i = 0; i < current_msgs->size; i++)
      {
         menu_widget_msg_t *msg = (menu_widget_msg_t*)
            FUNC4(current_msgs, i);

         FUNC10(msg, false);
      }
      FUNC3(current_msgs);
      current_msgs = NULL;
   }

   msg_queue_tasks_count = 0;

   /* Achievement notification */
   FUNC9(NULL);

   /* Font */
   FUNC12(&font_raster_regular.carr);
   FUNC12(&font_raster_bold.carr);

   FUNC5(NULL, NULL);

   /* Reset state of all other widgets */
   /* Generic message*/
   generic_message_alpha = 0.0f;

   /* Libretro message */
   libretro_tag = (uintptr_t) &libretro_message_timer;
   libretro_message_alpha = 0.0f;
   FUNC8(&libretro_message_timer);
   FUNC7(&libretro_tag);

   /* AI Service overlay */
   /* ... */

   /* Volume */
   volume_alpha = 0.0f;

   /* Screenshot */
   screenshot_alpha = 0.0f;
   FUNC11(NULL);
}