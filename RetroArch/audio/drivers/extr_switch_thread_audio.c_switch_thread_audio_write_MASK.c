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
struct TYPE_2__ {int /*<<< orphan*/  fifoLock; int /*<<< orphan*/  fifo; int /*<<< orphan*/  condLock; int /*<<< orphan*/  cond; scalar_t__ running; scalar_t__ nonblocking; } ;
typedef  TYPE_1__ switch_thread_audio_t ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(void *data, const void *buf, size_t size)
{
   size_t avail, written;
   switch_thread_audio_t *swa = (switch_thread_audio_t *)data;

   if (!swa || !swa->running)
         return 0;

   if (swa->nonblocking)
   {
      FUNC2(&swa->fifoLock);
      avail = FUNC5(swa->fifo);
      written = FUNC0(avail, size);
      if (written > 0)
         FUNC4(swa->fifo, buf, written);
      FUNC3(&swa->fifoLock);
   }
   else
   {
      written = 0;
      while (written < size && swa->running)
      {
         FUNC2(&swa->fifoLock);
         avail = FUNC5(swa->fifo);
         if (avail == 0)
         {
            FUNC3(&swa->fifoLock);
            FUNC2(&swa->condLock);
            if (swa->running)
               FUNC1(&swa->cond, &swa->condLock);
            FUNC3(&swa->condLock);
         }
         else
         {
            size_t write_amt = FUNC0(size - written, avail);
            FUNC4(swa->fifo, (const char*)buf + written, write_amt);
            FUNC3(&swa->fifoLock);
            written += write_amt;
         }
      }
   }

   return written;
}