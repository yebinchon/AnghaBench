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
struct TYPE_6__ {float audio_volume; } ;
struct TYPE_7__ {TYPE_1__ floats; } ;
typedef  TYPE_2__ settings_t ;
struct TYPE_8__ {int /*<<< orphan*/ * userdata; int /*<<< orphan*/  duration; int /*<<< orphan*/  cb; } ;
typedef  TYPE_3__ menu_timer_ctx_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_ACTION_MUTE_ENABLE ; 
 int /*<<< orphan*/  DEFAULT_BACKDROP ; 
 int /*<<< orphan*/  VOLUME_DURATION ; 
 int* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  menu_widgets_volume_timer_end ; 
 int /*<<< orphan*/  FUNC4 (int,float) ; 
 int /*<<< orphan*/  volume_alpha ; 
 float volume_db ; 
 int volume_mute ; 
 int /*<<< orphan*/  volume_percent ; 
 int /*<<< orphan*/  volume_tag ; 
 float volume_text_alpha ; 
 int /*<<< orphan*/  volume_timer ; 

void FUNC5(void)
{
   settings_t *settings = FUNC1();
   bool mute            = *(FUNC0(AUDIO_ACTION_MUTE_ENABLE));
   float new_volume     = settings->floats.audio_volume;
   menu_timer_ctx_entry_t entry;

   FUNC2(&volume_tag);

   volume_db         = new_volume;
   volume_percent    = FUNC4(10, new_volume/20);
   volume_alpha      = DEFAULT_BACKDROP;
   volume_text_alpha = 1.0f;
   volume_mute       = mute;

   entry.cb          = menu_widgets_volume_timer_end;
   entry.duration    = VOLUME_DURATION;
   entry.userdata    = NULL;

   FUNC3(&volume_timer, &entry);
}