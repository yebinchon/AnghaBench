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
typedef  size_t ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  cond; scalar_t__ nonblock; int /*<<< orphan*/  buffer; } ;
typedef  TYPE_1__ coreaudio_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int g_interrupted ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(void *data, const void *buf_, size_t size)
{
   coreaudio_t *dev   = (coreaudio_t*)data;
   const uint8_t *buf = (const uint8_t*)buf_;
   size_t written     = 0;

   while (!g_interrupted && size > 0)
   {
      size_t write_avail;

      FUNC4(dev->lock);

      write_avail = FUNC1(dev->buffer);
      if (write_avail > size)
         write_avail = size;

      FUNC0(dev->buffer, buf, write_avail);
      buf += write_avail;
      written += write_avail;
      size -= write_avail;

      if (dev->nonblock)
      {
         FUNC5(dev->lock);
         break;
      }

#if TARGET_OS_IPHONE
      if (write_avail == 0 && !scond_wait_timeout(
               dev->cond, dev->lock, 3000000))
         g_interrupted = true;
#else
      if (write_avail == 0)
         FUNC2(dev->cond, dev->lock);
#endif
      FUNC5(dev->lock);
   }

   return written;
}