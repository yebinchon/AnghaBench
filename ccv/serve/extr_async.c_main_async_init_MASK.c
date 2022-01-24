#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  main_async_t ;

/* Variables and functions */
 int /*<<< orphan*/ * async_queue ; 
 int /*<<< orphan*/  async_queue_semaphore ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  main_async ; 
 int /*<<< orphan*/  main_async_drain ; 
 scalar_t__ FUNC2 (int) ; 
 int queue_length ; 

void FUNC3(void)
{
	async_queue_semaphore = FUNC0(1);
	async_queue = (main_async_t*)FUNC2(sizeof(main_async_t) * queue_length);
	FUNC1(&main_async, main_async_drain);
}