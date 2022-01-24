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
struct TYPE_3__ {int is_paused; int success; int /*<<< orphan*/  mainloop; int /*<<< orphan*/  stream; } ;
typedef  TYPE_1__ pa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stream_success_cb ; 

__attribute__((used)) static bool FUNC5(void *data, bool is_shutdown)
{
   bool ret;
   pa_t *pa = (pa_t*)data;
   if (!pa->is_paused)
      return true;

   FUNC0("[PulseAudio]: Unpausing.\n");

   pa->success = true; /* In case of spurious wakeup. Not critical. */
   FUNC2(pa->mainloop);
   FUNC1(pa->stream, false, stream_success_cb, pa);
   FUNC4(pa->mainloop);
   ret = pa->success;
   FUNC3(pa->mainloop);
   pa->is_paused = false;
   return ret;
}