#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ state; } ;
typedef  TYPE_1__ retro_task_t ;
struct TYPE_6__ {int /*<<< orphan*/  handle; } ;
typedef  TYPE_2__ http_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC4(retro_task_t *task)
{
   http_handle_t *http  = (http_handle_t*)task->state;
   size_t pos  = 0, tot = 0;

   /* FIXME: This wouldn't be needed if we could wait for a timeout */
   if (FUNC2())
      FUNC1(1);

   if (!FUNC0(http->handle, &pos, &tot))
   {
      FUNC3(task, (tot == 0) ? -1 : (signed)pos / (tot / 100));
      return -1;
   }

   return 0;
}