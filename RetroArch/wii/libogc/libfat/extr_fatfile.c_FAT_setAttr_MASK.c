#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {int offset; scalar_t__ sector; int /*<<< orphan*/  cluster; } ;
struct TYPE_10__ {TYPE_2__ dataEnd; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  cache; } ;
typedef  TYPE_1__ PARTITION ;
typedef  TYPE_2__ DIR_ENTRY_POSITION ;
typedef  TYPE_3__ DIR_ENTRY ;

/* Variables and functions */
 int DIR_ENTRY_DATA_SIZE ; 
 scalar_t__ DIR_ENTRY_attributes ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_3__*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (char const*,char) ; 

int FUNC8(const char *file, uint8_t attr) {

	// Defines...
	DIR_ENTRY_POSITION entryEnd;
	PARTITION *partition = NULL;
	DIR_ENTRY dirEntry;

	// Get Partition
	partition = FUNC5( file );

	// Check Partition
	if( !partition )
		return -1;

	// Move the path pointer to the start of the actual path
	if (FUNC7 (file, ':') != NULL)
		file = FUNC7 (file, ':') + 1;
	if (FUNC7 (file, ':') != NULL)
		return -1;

	// Get DIR_ENTRY
	if( !FUNC2 (partition, &dirEntry, file, NULL) )
		return -1;

	// Get Entry-End
	entryEnd = dirEntry.dataEnd;

	// Lock Partition
	FUNC4(&partition->lock);

	// Write Data
	FUNC1 (
		partition->cache // Cache to write
		, &attr // Value to be written
		, FUNC3( partition , entryEnd.cluster ) + entryEnd.sector // cluster
		, entryEnd.offset * DIR_ENTRY_DATA_SIZE + DIR_ENTRY_attributes // offset
		, 1 // Size in bytes
	);

	// Flush any sectors in the disc cache
	if ( !FUNC0( partition->cache ) ) {
		FUNC6(&partition->lock); // Unlock Partition
		return -1;
	}

	// Unlock Partition
	FUNC6(&partition->lock);

	return 0;
}