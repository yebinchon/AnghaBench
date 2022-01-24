#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__* nextOpenFile; } ;
struct TYPE_7__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  cache; TYPE_2__* firstOpenFile; } ;
typedef  TYPE_1__ PARTITION ;
typedef  TYPE_2__ FILE_STRUCT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7 (PARTITION* partition) {
	FILE_STRUCT* nextFile;

	FUNC1(&partition->lock);

	// Synchronize open files
	nextFile = partition->firstOpenFile;
	while (nextFile) {
		FUNC5 (nextFile);
		nextFile = nextFile->nextOpenFile;
	}

	// Write out the fs info sector
	FUNC4(partition);

	// Free memory used by the cache, writing it to disc at the same time
	FUNC0 (partition->cache);

	// Unlock the partition and destroy the lock
	FUNC6(&partition->lock);
	FUNC2(&partition->lock);

	// Free memory used by the partition
	FUNC3 (partition);
}