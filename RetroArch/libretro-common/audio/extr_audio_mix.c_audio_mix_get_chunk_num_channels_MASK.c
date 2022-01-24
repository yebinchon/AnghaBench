#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* rwav; } ;
typedef  TYPE_2__ audio_chunk_t ;
struct TYPE_4__ {int numchannels; } ;

/* Variables and functions */

int FUNC0(audio_chunk_t *chunk)
{
   if (!chunk)
      return 0;

   if (chunk->rwav)
      return chunk->rwav->numchannels;

   /* don't support other formats yet */
   return 0;
}