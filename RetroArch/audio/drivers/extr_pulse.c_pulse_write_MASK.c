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
struct TYPE_3__ {int /*<<< orphan*/  mainloop; int /*<<< orphan*/  nonblock; int /*<<< orphan*/  stream; scalar_t__ is_paused; } ;
typedef  TYPE_1__ pa_t ;

/* Variables and functions */
 size_t FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PA_SEEK_RELATIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

__attribute__((used)) static ssize_t FUNC7(void *data, const void *buf_, size_t size)
{
   pa_t           *pa = (pa_t*)data;
   const uint8_t *buf = (const uint8_t*)buf_;
   size_t     written = 0;

   /* Workaround buggy menu code.
    * If a write happens while we're paused, we might never progress. */
   if (pa->is_paused)
      if (!FUNC6(pa, false))
         return -1;

   FUNC3(pa->mainloop);
   while (size)
   {
      size_t writable = FUNC0(size, FUNC1(pa->stream));

      if (writable)
      {
         FUNC2(pa->stream, buf, writable, NULL, 0, PA_SEEK_RELATIVE);
         buf += writable;
         size -= writable;
         written += writable;
      }
      else if (!pa->nonblock)
         FUNC5(pa->mainloop);
      else
         break;
   }

   FUNC4(pa->mainloop);

   return written;
}