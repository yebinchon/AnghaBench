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
typedef  int uint16_t ;
struct TYPE_2__ {int read_pos; int zeroBuffer; int buffer; int /*<<< orphan*/  cond_lock; int /*<<< orphan*/  cond; int /*<<< orphan*/  fifo_lock; scalar_t__ write_pos; scalar_t__ running; int /*<<< orphan*/  rate; } ;
typedef  TYPE_1__ psp_audio_t ;

/* Variables and functions */
 int AUDIO_BUFFER_SIZE_MASK ; 
 int AUDIO_OUT_COUNT ; 
 int /*<<< orphan*/  PSP_AUDIO_VOLUME_MAX ; 
 int /*<<< orphan*/  SCE_AUDIO_OUT_MODE_STEREO ; 
 int /*<<< orphan*/  SCE_AUDIO_OUT_PORT_TYPE_MAIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(void *data)
{
   psp_audio_t* psp = (psp_audio_t*)data;

#if defined(VITA)
   int port         = sceAudioOutOpenPort(
         SCE_AUDIO_OUT_PORT_TYPE_MAIN, AUDIO_OUT_COUNT,
         psp->rate, SCE_AUDIO_OUT_MODE_STEREO);
#elif defined(ORBIS)
   int port         = sceAudioOutOpen(0xff,
         SCE_AUDIO_OUT_PORT_TYPE_MAIN, 0, AUDIO_OUT_COUNT,
         psp->rate, SCE_AUDIO_OUT_MODE_STEREO);
#else
   FUNC6(AUDIO_OUT_COUNT, psp->rate, 2);
#endif

   while (psp->running)
   {
      bool cond           = false;
      uint16_t read_pos   = psp->read_pos;
      uint16_t read_pos_2 = psp->read_pos;

      FUNC9(psp->fifo_lock);

      cond                = ((uint16_t)(psp->write_pos - read_pos) & AUDIO_BUFFER_SIZE_MASK)
            < (AUDIO_OUT_COUNT * 2);

      if (!cond)
      {
         read_pos      += AUDIO_OUT_COUNT;
         read_pos      &= AUDIO_BUFFER_SIZE_MASK;
         psp->read_pos  = read_pos;
      }

      FUNC10(psp->fifo_lock);
      FUNC9(psp->cond_lock);
      FUNC8(psp->cond);
      FUNC10(psp->cond_lock);

#if defined(VITA) || defined(ORBIS)
      sceAudioOutOutput(port,
        cond ? (psp->zeroBuffer)
              : (psp->buffer + read_pos_2));
#else
      FUNC7(PSP_AUDIO_VOLUME_MAX, cond ? (psp->zeroBuffer)
            : (psp->buffer + read_pos));
#endif
   }

#if defined(VITA)
   sceAudioOutReleasePort(port);
#elif defined(ORBIS)
   sceAudioOutClose(port);
#else
   FUNC5();
#endif

   return;
}