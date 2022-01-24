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
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  size_t ssize_t ;
struct TYPE_3__ {size_t written; size_t pos; int /*<<< orphan*/  mvoice; int /*<<< orphan*/  spinlock; int /*<<< orphan*/ * buffer_r; int /*<<< orphan*/ * buffer_l; scalar_t__ nonblocking; } ;
typedef  TYPE_1__ ax_audio_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t AX_AUDIO_COUNT ; 
 size_t AX_AUDIO_MAX_FREE ; 
 size_t AX_AUDIO_SAMPLE_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 size_t FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 

__attribute__((used)) static ssize_t FUNC8(void* data, const void* buf, size_t size)
{
   uint32_t i;
   size_t countAvail   = 0;
   ax_audio_t* ax      = (ax_audio_t*)data;
   const uint16_t* src = buf;
   size_t count        = size >> 2;

   if(!size || (size & 0x3))
      return 0;

   if(count > AX_AUDIO_MAX_FREE)
      count = AX_AUDIO_MAX_FREE;

   countAvail = ((ax->written > AX_AUDIO_MAX_FREE) ? 0 : (AX_AUDIO_MAX_FREE - ax->written));

   if (ax->nonblocking)
   {
      /* Not enough available for 3ms of data */
      if(countAvail < AX_AUDIO_SAMPLE_COUNT)
         count = 0;
   }
   else if(countAvail < count)
   {
      /* Sync, wait for free memory */
      while(FUNC0(ax->mvoice) && (countAvail < count))
      {
         FUNC5(); /* Gives threads with same priority time to run */
         countAvail = (ax->written > AX_AUDIO_MAX_FREE ? 0 : (AX_AUDIO_MAX_FREE - ax->written));
      }
   }

   /* Over available space, do as much as possible */
   if(count > countAvail)
      count = countAvail;

   /* make sure we have input size */
   if(count > 0)
   {
      /* write in new data */
      size_t startPos   = ax->pos;
      int flushP2needed = 0;
      int flushP2       = 0;

      for (i = 0; i < (count << 1); i += 2)
      {
         ax->buffer_l[ax->pos] = src[i];
         ax->buffer_r[ax->pos] = src[i + 1];
         ax->pos               = FUNC6(ax->pos + 1);

         /* wrapped around, make sure to store cache */
         if(ax->pos == 0)
         {
            flushP2needed = 1;
            flushP2       = ((count << 1) - i);
            FUNC2(ax->buffer_l+startPos, (AX_AUDIO_COUNT-startPos) << 1);
            FUNC2(ax->buffer_r+startPos, (AX_AUDIO_COUNT-startPos) << 1);
         }
      }

      /* standard cache store case */
      if(!flushP2needed)
      {
         FUNC2(ax->buffer_l+startPos, count << 1);
         FUNC1(ax->buffer_r+startPos, count << 1);
      }
      /* store the rest after wrap */
      else if(flushP2 > 0)
      {
         FUNC2(ax->buffer_l, flushP2);
         FUNC1(ax->buffer_r, flushP2);
      }

      /* add in new audio data */
      if(FUNC3(&ax->spinlock))
      {
         ax->written += count;
         FUNC4(&ax->spinlock);
      }
   }

   /* Possibly buffer underrun
    *
    * checks if it can be started
    */
   if(!FUNC0(ax->mvoice))
      FUNC7(ax, false);

   /* return what was actually copied */
   return (count << 2);
}