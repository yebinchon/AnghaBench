#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_frame_info_t ;
struct TYPE_3__ {int /*<<< orphan*/  (* set_title ) (int /*<<< orphan*/ *,char*) ;} ;
typedef  TYPE_1__ ui_window_t ;
typedef  int /*<<< orphan*/  title ;

/* Variables and functions */
 int /*<<< orphan*/  main_window ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void FUNC3(void *data, void *data2)
{
   video_frame_info_t* video_info = (video_frame_info_t*)data2;
   char title[128];

   title[0] = '\0';

   FUNC2(title, sizeof(title));

   if (title[0])
   {
      const ui_window_t *window = FUNC1();

      if (window)
         window->set_title(&main_window, title);
   }
}