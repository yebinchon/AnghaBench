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
struct TYPE_2__ {int /*<<< orphan*/  fifo_condlock; int /*<<< orphan*/  fifo_condvar; int /*<<< orphan*/  fifo_lock; int /*<<< orphan*/  fifo; scalar_t__ running; scalar_t__ nonblocking; scalar_t__ paused; } ;
typedef  TYPE_1__ libnx_audren_thread_t ;

/* Variables and functions */
 size_t FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(void *data, const void *buf, size_t size)
{
   libnx_audren_thread_t *aud = (libnx_audren_thread_t*)data;
   size_t available, written, written_tmp;

   if (!aud || !aud->running)
      return -1;

   if(aud->paused)
      return 0;

   if(aud->nonblocking)
   {
      FUNC4(&aud->fifo_lock);
      available = FUNC3(aud->fifo);
      written = FUNC0(available, size);
      if(written > 0)
      {
         FUNC2(aud->fifo, buf, written);
      }
      FUNC5(&aud->fifo_lock);
   }
   else
   {
      written = 0;
      while (written < size && aud->running)
      {
         FUNC4(&aud->fifo_lock);
         available = FUNC3(aud->fifo);
         if(available)
         {
            written_tmp = FUNC0(size - written, available);
            FUNC2(aud->fifo, (const char*)buf + written, written_tmp);
            FUNC5(&aud->fifo_lock);
            written += written_tmp;
         }
         else
         {
            FUNC5(&aud->fifo_lock);
            FUNC4(&aud->fifo_condlock);
            FUNC1(&aud->fifo_condvar, &aud->fifo_condlock);
            FUNC5(&aud->fifo_condlock);
         }
      }
   }

   return written;
}