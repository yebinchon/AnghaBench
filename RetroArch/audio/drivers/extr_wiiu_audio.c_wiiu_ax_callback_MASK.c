#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ written; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  mvoice; } ;
typedef  TYPE_1__ ax_audio_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ AX_AUDIO_SAMPLE_COUNT ; 
 scalar_t__ AX_AUDIO_SAMPLE_MIN ; 
 int /*<<< orphan*/  AX_VOICE_STATE_STOPPED ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * wiiu_cb_ax ; 

void FUNC4(void)
{
   /*possibly called before unregister */
   if(wiiu_cb_ax == NULL)
      return;

   ax_audio_t *ax = (ax_audio_t*)wiiu_cb_ax;
   if(FUNC0(ax->mvoice))
   {
      if(FUNC2(&ax->spinlock))
      {
         /* Buffer underrun, stop playback to let it fill up */
         if(ax->written < AX_AUDIO_SAMPLE_MIN)
            FUNC1(ax->mvoice, AX_VOICE_STATE_STOPPED);
         ax->written -= AX_AUDIO_SAMPLE_COUNT;
         FUNC3(&ax->spinlock);
      }
   }
}