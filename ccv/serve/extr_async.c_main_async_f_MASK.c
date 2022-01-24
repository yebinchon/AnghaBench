#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void (* cb ) (void*) ;void* context; } ;
typedef  TYPE_1__ main_async_t ;

/* Variables and functions */
 int /*<<< orphan*/  DISPATCH_TIME_FOREVER ; 
 int EV_DEFAULT_ ; 
 int /*<<< orphan*/  FUNC0 (void (*) (void*)) ; 
 TYPE_1__* async_queue ; 
 int /*<<< orphan*/  async_queue_semaphore ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int main_async ; 
 int queue_length ; 
 int queue_pending ; 
 size_t queue_position ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 

void FUNC5(void* context, void (*cb)(void*))
{
	FUNC0(cb);
	FUNC2(async_queue_semaphore, DISPATCH_TIME_FOREVER);
	++queue_pending;
	if (queue_pending > queue_length)
	{
		queue_length = (queue_length * 3 + 1) / 2;
		async_queue = (main_async_t*)FUNC4(async_queue, sizeof(main_async_t) * queue_length);
		// when expand the queue, the order of our circular buffer is not maintained
		// thus, have to reset the queue_postion here
		queue_position = queue_pending - 1;
	}
	async_queue[queue_position].context = context;
	async_queue[queue_position].cb = cb;
	queue_position = (queue_position + 1) % queue_length;
	FUNC1(async_queue_semaphore);
	FUNC3(EV_DEFAULT_ &main_async);
}