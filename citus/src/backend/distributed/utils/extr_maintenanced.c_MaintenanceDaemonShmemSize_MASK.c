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
typedef  size_t Size ;
typedef  int /*<<< orphan*/  MaintenanceDaemonDBData ;
typedef  int /*<<< orphan*/  MaintenanceDaemonControlData ;

/* Variables and functions */
 size_t FUNC0 (size_t,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  max_worker_processes ; 

__attribute__((used)) static size_t
FUNC2(void)
{
	Size size = 0;
	Size hashSize = 0;

	size = FUNC0(size, sizeof(MaintenanceDaemonControlData));

	/*
	 * We request enough shared memory to have one hash-table entry for each
	 * worker process. We couldn't start more anyway, so there's little point
	 * in allocating more.
	 */
	hashSize = FUNC1(max_worker_processes, sizeof(MaintenanceDaemonDBData));
	size = FUNC0(size, hashSize);

	return size;
}