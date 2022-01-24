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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  s16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (void*,int) ; 
 int LOGSIZE ; 
 int NO_SYNC ; 
 size_t SOUND_BUFFER_NUM ; 
 int SYNC_AUDIO ; 
 int audioStarted ; 
 int audio_sync ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int* delta_samp ; 
 int frame_cnt ; 
 size_t mixbuffer ; 
 scalar_t__ prevtime ; 
 scalar_t__* soundbuffer ; 

int FUNC5(void)
{
  if (!audio_sync)
  {
    /* Current available soundbuffer */
    s16 *sb = (s16 *)(soundbuffer[mixbuffer]);

    /* Retrieve audio samples (size must be multiple of 32 bytes) */
    int size = FUNC4(sb) * 4;

  #ifdef LOG_TIMING
    if (prevtime && (frame_cnt < LOGSIZE - 1))
    {
      delta_samp[frame_cnt + 1] = size;
    }
    else
    {
      delta_samp[0] = size;
    }
  #endif

    /* Update DMA settings */
    FUNC3((void *)sb, size);
    FUNC0((u32) sb, size);
    mixbuffer = (mixbuffer + 1) % SOUND_BUFFER_NUM;
    audio_sync = 1;

    /* Start Audio DMA */
    /* this is called once to kick-off DMA from external memory to audio interface        */
    /* DMA operation is automatically restarted when all samples have been sent.          */
    /* If DMA settings are not updated at that time, previous sound buffer will be used.  */
    /* Therefore we need to make sure frame emulation is completed before current DMA is  */
    /* completed, by synchronizing frame emulation with DMA start and also by syncing it  */
    /* with Video Interrupt and outputing a suitable number of samples per frame.         */
    if (!audioStarted)
    {
      /* restart audio DMA */
      FUNC2();
      FUNC1();
      audioStarted = 1;
    }

    return SYNC_AUDIO;
  }

  return NO_SYNC;
}