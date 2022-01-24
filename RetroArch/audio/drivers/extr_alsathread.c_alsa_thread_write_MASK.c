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
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  fifo_lock; int /*<<< orphan*/  buffer; int /*<<< orphan*/  cond_lock; int /*<<< orphan*/  cond; scalar_t__ thread_dead; scalar_t__ nonblock; } ;
typedef  TYPE_1__ alsa_thread_t ;

/* Variables and functions */
 size_t FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(void *data, const void *buf, size_t size)
{
   alsa_thread_t *alsa = (alsa_thread_t*)data;

   if (alsa->thread_dead)
      return -1;

   if (alsa->nonblock)
   {
      size_t avail;
      size_t write_amt;

      FUNC4(alsa->fifo_lock);
      avail           = FUNC2(alsa->buffer);
      write_amt       = FUNC0(avail, size);

      FUNC1(alsa->buffer, buf, write_amt);
      FUNC5(alsa->fifo_lock);

      return write_amt;
   }
   else
   {
      size_t written = 0;
      while (written < size && !alsa->thread_dead)
      {
         size_t avail;
         FUNC4(alsa->fifo_lock);
         avail = FUNC2(alsa->buffer);

         if (avail == 0)
         {
            FUNC5(alsa->fifo_lock);
            FUNC4(alsa->cond_lock);
            if (!alsa->thread_dead)
               FUNC3(alsa->cond, alsa->cond_lock);
            FUNC5(alsa->cond_lock);
         }
         else
         {
            size_t write_amt = FUNC0(size - written, avail);
            FUNC1(alsa->buffer,
                  (const char*)buf + written, write_amt);
            FUNC5(alsa->fifo_lock);
            written += write_amt;
         }
      }
      return written;
   }
}