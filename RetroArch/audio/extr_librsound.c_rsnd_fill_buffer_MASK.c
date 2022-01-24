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
struct TYPE_4__ {int /*<<< orphan*/  cond; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond_mutex; } ;
struct TYPE_5__ {TYPE_1__ thread; int /*<<< orphan*/  fifo_buffer; int /*<<< orphan*/  thread_active; } ;
typedef  TYPE_2__ rsound_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC7(rsound_t *rd, const char *buf, size_t size)
{

   /* Wait until we have a ready buffer */
   for (;;)
   {
      /* Should the thread be shut down while we're running, return with error */
      if ( !rd->thread_active )
         return 0;

      FUNC5(rd->thread.mutex);
      if ( FUNC2(rd->fifo_buffer) >= size )
      {
         FUNC6(rd->thread.mutex);
         break;
      }
      FUNC6(rd->thread.mutex);

      /* Sleeps until we can write to the FIFO. */
      FUNC5(rd->thread.cond_mutex);
      FUNC3(rd->thread.cond);

      FUNC0("[RSound] rsnd_fill_buffer: Going to sleep.\n");
      FUNC4(rd->thread.cond, rd->thread.cond_mutex);
      FUNC0("[RSound] rsnd_fill_buffer: Woke up.\n");
      FUNC6(rd->thread.cond_mutex);
   }

   FUNC5(rd->thread.mutex);
   FUNC1(rd->fifo_buffer, buf, size);
   FUNC6(rd->thread.mutex);
   //RSD_DEBUG("[RSound] fill_buffer: Wrote to buffer.\n");

   /* Send signal to thread that buffer has been updated */
   //RSD_DEBUG("[RSound] fill_buffer: Waking up thread.\n");
   FUNC3(rd->thread.cond);

   return size;
}