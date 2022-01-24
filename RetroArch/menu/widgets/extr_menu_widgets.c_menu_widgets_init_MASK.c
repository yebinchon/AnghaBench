#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  menu_widget_msg_t ;
typedef  int /*<<< orphan*/  file_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_QUEUE_ONSCREEN_MAX ; 
 int MSG_QUEUE_PENDING_MAX ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/ * current_msgs ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ menu_widgets_frame_count ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  msg_queue ; 

bool FUNC6(bool video_is_threaded)
{
   if (!FUNC3(video_is_threaded))
      goto error;

   menu_widgets_frame_count = 0;

   msg_queue = FUNC1(MSG_QUEUE_PENDING_MAX * sizeof(menu_widget_msg_t*));

   if (!msg_queue)
      goto error;

   current_msgs = (file_list_t*)FUNC0(1, sizeof(file_list_t));

   if (!current_msgs)
      goto error;

   if (!FUNC2(current_msgs, MSG_QUEUE_ONSCREEN_MAX))
      goto error;

   return true;

error:
   if (FUNC5())
      FUNC4();
   return false;
}