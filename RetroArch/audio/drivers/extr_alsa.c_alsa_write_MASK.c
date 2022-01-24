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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int ssize_t ;
typedef  int snd_pcm_sframes_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_3__ {int /*<<< orphan*/  pcm; scalar_t__ nonblock; scalar_t__ is_paused; scalar_t__ has_float; int /*<<< orphan*/  frame_bits; } ;
typedef  TYPE_1__ alsa_t ;

/* Variables and functions */
 int FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EINTR ; 
 int EPIPE ; 
 int ESTRPIPE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static ssize_t FUNC5(void *data, const void *buf_, size_t size_)
{
   alsa_t *alsa              = (alsa_t*)data;
   const uint8_t *buf        = (const uint8_t*)buf_;
   snd_pcm_sframes_t written = 0;
   snd_pcm_sframes_t size    = FUNC0(size_, alsa->frame_bits);
   size_t frames_size        = alsa->has_float ? sizeof(float) : sizeof(int16_t);

   /* Workaround buggy menu code.
    * If a write happens while we're paused, we might never progress. */
   if (alsa->is_paused)
      if (!FUNC1(alsa, false))
         return -1;

   if (alsa->nonblock)
   {
      while (size)
      {
         snd_pcm_sframes_t frames = FUNC4(alsa->pcm, buf, size);

         if (frames == -EPIPE || frames == -EINTR || frames == -ESTRPIPE)
         {
            if (FUNC2(alsa->pcm, frames, 1) < 0)
               return -1;

            break;
         }
         else if (frames == -EAGAIN)
            break;
         else if (frames < 0)
            return -1;

         written += frames;
         buf     += (frames << 1) * frames_size;
         size    -= frames;
      }
   }
   else
   {
      bool eagain_retry         = true;

      while (size)
      {
         snd_pcm_sframes_t frames;
         int rc = FUNC3(alsa->pcm, -1);

         if (rc == -EPIPE || rc == -ESTRPIPE || rc == -EINTR)
         {
            if (FUNC2(alsa->pcm, rc, 1) < 0)
               return -1;
            continue;
         }

         frames = FUNC4(alsa->pcm, buf, size);

         if (frames == -EPIPE || frames == -EINTR || frames == -ESTRPIPE)
         {
            if (FUNC2(alsa->pcm, frames, 1) < 0)
               return -1;

            break;
         }
         else if (frames == -EAGAIN)
         {
            /* Definitely not supposed to happen. */
            if (eagain_retry)
            {
               eagain_retry = false;
               continue;
            }
            break;
         }
         else if (frames < 0)
            return -1;

         written += frames;
         buf     += (frames << 1) * frames_size;
         size    -= frames;
      }
   }

   return written;
}