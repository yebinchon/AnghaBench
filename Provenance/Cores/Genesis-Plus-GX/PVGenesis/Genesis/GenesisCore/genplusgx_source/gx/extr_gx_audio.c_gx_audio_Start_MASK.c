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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int SOUND_BUFFER_LEN ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * ai_callback ; 
 scalar_t__ audioStarted ; 
 scalar_t__ audio_sync ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ mixbuffer ; 
 int /*<<< orphan*/  soundbuffer ; 

void FUNC8(void)
{
  /* shutdown background music */
  FUNC5(1);	
  FUNC6();	
  
  /* shutdown menu audio processing */
  FUNC1(1);
  FUNC0();
  FUNC3();
  FUNC2(NULL);
  FUNC4();

  /* DMA Interrupt callback */
  FUNC2(ai_callback);

  /* reset emulation audio processing */
  FUNC7(soundbuffer, 0, 3 * SOUND_BUFFER_LEN);
  audioStarted = 0;
  mixbuffer = 0;
  audio_sync = 0;
}