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
struct TYPE_3__ {unsigned int duration; int /*<<< orphan*/ * userdata; int /*<<< orphan*/  cb; } ;
typedef  TYPE_1__ menu_timer_ctx_entry_t ;
typedef  uintptr_t menu_animation_ctx_tag ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_BACKDROP ; 
 int /*<<< orphan*/  LIBRETRO_MESSAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*,unsigned int,int) ; 
 int /*<<< orphan*/  font_regular ; 
 int /*<<< orphan*/  libretro_message ; 
 int /*<<< orphan*/  libretro_message_alpha ; 
 int /*<<< orphan*/  libretro_message_timer ; 
 scalar_t__ libretro_message_width ; 
 int /*<<< orphan*/  FUNC1 (uintptr_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  menu_widgets_libretro_message_fadeout ; 
 int simple_widget_padding ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*) ; 

void FUNC6(const char *msg, unsigned duration)
{
   menu_animation_ctx_tag tag = (uintptr_t) &libretro_message_timer;
   menu_timer_ctx_entry_t timer;

   FUNC4(libretro_message, msg, LIBRETRO_MESSAGE_SIZE);

   libretro_message_alpha = DEFAULT_BACKDROP;

   /* Kill and restart the timer / animation */
   FUNC2(&libretro_message_timer);
   FUNC1(&tag);

   timer.cb       = menu_widgets_libretro_message_fadeout;
   timer.duration = duration;
   timer.userdata = NULL;

   FUNC3(&libretro_message_timer, &timer);

   /* Compute text width */
   libretro_message_width = FUNC0(font_regular, msg, (unsigned)FUNC5(msg), 1) + simple_widget_padding * 2;
}