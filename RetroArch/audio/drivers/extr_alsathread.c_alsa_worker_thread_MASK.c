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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  snd_pcm_sframes_t ;
struct TYPE_2__ {int thread_dead; int /*<<< orphan*/  cond_lock; int /*<<< orphan*/  cond; int /*<<< orphan*/  pcm; int /*<<< orphan*/  period_frames; scalar_t__ period_size; int /*<<< orphan*/  fifo_lock; int /*<<< orphan*/  buffer; } ;
typedef  TYPE_1__ alsa_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  EPIPE ; 
 int /*<<< orphan*/  ESTRPIPE ; 
 size_t FUNC0 (scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(void *data)
{
   alsa_thread_t *alsa = (alsa_thread_t*)data;
   uint8_t        *buf = (uint8_t *)FUNC2(1, alsa->period_size);

   if (!buf)
   {
      FUNC1("failed to allocate audio buffer");
      goto end;
   }

   while (!alsa->thread_dead)
   {
      size_t avail;
      size_t fifo_size;
      snd_pcm_sframes_t frames;
      FUNC8(alsa->fifo_lock);
      avail = FUNC4(alsa->buffer);
      fifo_size = FUNC0(alsa->period_size, avail);
      FUNC3(alsa->buffer, buf, fifo_size);
      FUNC7(alsa->cond);
      FUNC9(alsa->fifo_lock);

      /* If underrun, fill rest with silence. */
      FUNC6(buf + fifo_size, 0, alsa->period_size - fifo_size);

      frames = FUNC11(alsa->pcm, buf, alsa->period_frames);

      if (frames == -EPIPE || frames == -EINTR ||
            frames == -ESTRPIPE)
      {
         if (FUNC10(alsa->pcm, frames, 1) < 0)
         {
            FUNC1("[ALSA]: (#2) Failed to recover from error (%s)\n",
                  FUNC12(frames));
            break;
         }

         continue;
      }
      else if (frames < 0)
      {
         FUNC1("[ALSA]: Unknown error occurred (%s).\n",
               FUNC12(frames));
         break;
      }
   }

end:
   FUNC8(alsa->cond_lock);
   alsa->thread_dead = true;
   FUNC7(alsa->cond);
   FUNC9(alsa->cond_lock);
   FUNC5(buf);
}