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
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  info ;
typedef  int /*<<< orphan*/  TaskTracker ;
struct TYPE_4__ {int entrysize; int /*<<< orphan*/  hcxt; int /*<<< orphan*/  hash; scalar_t__ keysize; } ;
typedef  int /*<<< orphan*/  HTAB ;
typedef  TYPE_1__ HASHCTL ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  FATAL ; 
 int HASH_CONTEXT ; 
 int HASH_ELEM ; 
 int HASH_FUNCTION ; 
 scalar_t__ WORKER_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tag_hash ; 

__attribute__((used)) static HTAB *
FUNC5(const char *taskTrackerHashName, uint32 taskTrackerHashSize)
{
	HASHCTL info;
	int hashFlags = 0;
	HTAB *taskTrackerHash = NULL;

	FUNC4(&info, 0, sizeof(info));
	info.keysize = WORKER_LENGTH + sizeof(uint32);
	info.entrysize = sizeof(TaskTracker);
	info.hash = tag_hash;
	info.hcxt = CurrentMemoryContext;
	hashFlags = (HASH_ELEM | HASH_FUNCTION | HASH_CONTEXT);

	taskTrackerHash = FUNC3(taskTrackerHashName, taskTrackerHashSize,
								  &info, hashFlags);
	if (taskTrackerHash == NULL)
	{
		FUNC0(FATAL, (FUNC1(ERRCODE_OUT_OF_MEMORY),
						FUNC2("could not initialize task tracker hash")));
	}

	return taskTrackerHash;
}