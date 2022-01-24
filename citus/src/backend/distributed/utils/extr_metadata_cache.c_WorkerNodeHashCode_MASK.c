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
typedef  int uint32 ;
struct TYPE_2__ {char* workerName; int workerPort; } ;
typedef  TYPE_1__ WorkerNode ;
typedef  int /*<<< orphan*/  Size ;

/* Variables and functions */
 int /*<<< orphan*/  WORKER_LENGTH ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int const*,int) ; 

__attribute__((used)) static uint32
FUNC2(const void *key, Size keySize)
{
	const WorkerNode *worker = (const WorkerNode *) key;
	const char *workerName = worker->workerName;
	const uint32 *workerPort = &(worker->workerPort);

	/* standard hash function outlined in Effective Java, Item 8 */
	uint32 result = 17;
	result = 37 * result + FUNC0(workerName, WORKER_LENGTH);
	result = 37 * result + FUNC1(workerPort, sizeof(uint32));
	return result;
}