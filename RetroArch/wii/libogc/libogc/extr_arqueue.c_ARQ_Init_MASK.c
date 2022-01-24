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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  ARQ_DEF_CHUNK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __ARInterruptServiceRoutine ; 
 int /*<<< orphan*/ * __ARQCallbackHi ; 
 int /*<<< orphan*/ * __ARQCallbackLo ; 
 int /*<<< orphan*/  __ARQChunkSize ; 
 int __ARQInitFlag ; 
 int /*<<< orphan*/ * __ARQReqPendingHi ; 
 int /*<<< orphan*/ * __ARQReqPendingLo ; 
 int /*<<< orphan*/  __ARQReqQueueHi ; 
 int /*<<< orphan*/  __ARQReqQueueLo ; 
 int /*<<< orphan*/  __ARQSyncQueue ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5()
{
	u32 level;
	if(__ARQInitFlag) return;

	FUNC2(level);

	__ARQReqPendingLo = NULL;
	__ARQReqPendingHi = NULL;
	__ARQCallbackLo = NULL;
	__ARQCallbackHi = NULL;

	__ARQChunkSize = ARQ_DEF_CHUNK_SIZE;

	FUNC1(&__ARQSyncQueue);

	FUNC4(&__ARQReqQueueLo);
	FUNC4(&__ARQReqQueueHi);

	FUNC0(__ARInterruptServiceRoutine);

	__ARQInitFlag = 1;
	FUNC3(level);
}