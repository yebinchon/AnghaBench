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
struct TYPE_2__ {int /*<<< orphan*/  fifo_lock; int /*<<< orphan*/  fifo; } ;
typedef  TYPE_1__ libnx_audren_thread_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC3(void *data)
{
   libnx_audren_thread_t *aud = (libnx_audren_thread_t*)data;
   size_t available;

   if (!aud)
      return 0;

   FUNC1(&aud->fifo_lock);
   available = FUNC0(aud->fifo);
   FUNC2(&aud->fifo_lock);

   return available;
}