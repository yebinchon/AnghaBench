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
typedef  size_t ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  buffer; int /*<<< orphan*/  lock; int /*<<< orphan*/  cond; scalar_t__ nonblock; } ;
typedef  TYPE_1__ sdl_audio_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC7(void *data, const void *buf, size_t size)
{
   ssize_t ret      = 0;
   sdl_audio_t *sdl = (sdl_audio_t*)data;

   if (sdl->nonblock)
   {
      size_t avail, write_amt;

      FUNC0();
      avail = FUNC3(sdl->buffer);
      write_amt = avail > size ? size : avail;
      FUNC2(sdl->buffer, buf, write_amt);
      FUNC1();
      ret = write_amt;
   }
   else
   {
      size_t written = 0;

      while (written < size)
      {
         size_t avail;

         FUNC0();
         avail = FUNC3(sdl->buffer);

         if (avail == 0)
         {
            FUNC1();
#ifdef HAVE_THREADS
            slock_lock(sdl->lock);
            scond_wait(sdl->cond, sdl->lock);
            slock_unlock(sdl->lock);
#endif
         }
         else
         {
            size_t write_amt = size - written > avail ? avail : size - written;
            FUNC2(sdl->buffer, (const char*)buf + written, write_amt);
            FUNC1();
            written += write_amt;
         }
      }
      ret = written;
   }

   return ret;
}