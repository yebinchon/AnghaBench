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
struct TYPE_2__ {size_t buffer_size; int /*<<< orphan*/  frame_bits; int /*<<< orphan*/  pcm; } ;
typedef  TYPE_1__ tinyalsa_t ;
typedef  scalar_t__ snd_pcm_sframes_t ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC2(void *data)
{
   tinyalsa_t *alsa        = (tinyalsa_t*)data;
   snd_pcm_sframes_t avail = FUNC1(alsa->pcm);

   if (avail < 0)
      return alsa->buffer_size;

   return FUNC0(avail, alsa->frame_bits);
}