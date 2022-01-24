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
struct TYPE_2__ {int flag; int pcm_indx; size_t pcmout_pos; scalar_t__* pcmout; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int READ_SAMPLES ; 
 int /*<<< orphan*/  ogg_thread_running ; 
 int /*<<< orphan*/  oggplayer_queue ; 
 TYPE_1__ private_ogg ; 

__attribute__((used)) static void FUNC3(int voice)
{
  if (!ogg_thread_running)
  {
    FUNC1(0);
    return;
  }

  if (private_ogg.flag & 128)
    return; /* Ogg is paused */

  if (private_ogg.pcm_indx >= READ_SAMPLES)
  {
    if (FUNC0(0,
        (void *) private_ogg.pcmout[private_ogg.pcmout_pos],
        private_ogg.pcm_indx << 1) == 0)
    {
      private_ogg.pcmout_pos ^= 1;
      private_ogg.pcm_indx = 0;
      private_ogg.flag = 0;
      FUNC2(oggplayer_queue);
    }
  }
  else
  {
    if (private_ogg.flag & 64)
    {
      private_ogg.flag &= ~64;
      FUNC2(oggplayer_queue);
    }
  }
}