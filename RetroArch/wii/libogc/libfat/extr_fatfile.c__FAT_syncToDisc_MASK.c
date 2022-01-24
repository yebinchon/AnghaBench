#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {int /*<<< orphan*/  cache; } ;
struct TYPE_5__ {int offset; scalar_t__ sector; int /*<<< orphan*/  cluster; } ;
struct TYPE_6__ {int modified; int startCluster; TYPE_4__* partition; TYPE_1__ dirEntryEnd; int /*<<< orphan*/  filesize; scalar_t__ write; int /*<<< orphan*/  inUse; } ;
typedef  TYPE_2__ FILE_STRUCT ;

/* Variables and functions */
 int /*<<< orphan*/  ATTRIB_ARCH ; 
 int DIR_ENTRY_DATA_SIZE ; 
 int /*<<< orphan*/  DIR_ENTRY_aDate ; 
 size_t DIR_ENTRY_attributes ; 
 int /*<<< orphan*/  DIR_ENTRY_cluster ; 
 int /*<<< orphan*/  DIR_ENTRY_clusterHigh ; 
 int /*<<< orphan*/  DIR_ENTRY_fileSize ; 
 int /*<<< orphan*/  DIR_ENTRY_mDate ; 
 int /*<<< orphan*/  DIR_ENTRY_mTime ; 
 int EBADF ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int,int) ; 
 scalar_t__ FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8 (FILE_STRUCT* file) {
	uint8_t dirEntryData[DIR_ENTRY_DATA_SIZE];

	if (!file || !file->inUse) {
		return EBADF;
	}

	if (file->write && file->modified) {
		// Load the old entry
		FUNC1 (file->partition->cache, dirEntryData,
			FUNC3(file->partition, file->dirEntryEnd.cluster) + file->dirEntryEnd.sector,
			file->dirEntryEnd.offset * DIR_ENTRY_DATA_SIZE, DIR_ENTRY_DATA_SIZE);

		// Write new data to the directory entry
		// File size
		FUNC7 (dirEntryData, DIR_ENTRY_fileSize, file->filesize);

		// Start cluster
		FUNC6 (dirEntryData, DIR_ENTRY_cluster, file->startCluster);
		FUNC6 (dirEntryData, DIR_ENTRY_clusterHigh, file->startCluster >> 16);

		// Modification time and date
		FUNC6 (dirEntryData, DIR_ENTRY_mTime, FUNC5());
		FUNC6 (dirEntryData, DIR_ENTRY_mDate, FUNC4());

		// Access date
		FUNC6 (dirEntryData, DIR_ENTRY_aDate, FUNC4());

		// Set archive attribute
		dirEntryData[DIR_ENTRY_attributes] |= ATTRIB_ARCH;

		// Write the new entry
		FUNC2 (file->partition->cache, dirEntryData,
			FUNC3(file->partition, file->dirEntryEnd.cluster) + file->dirEntryEnd.sector,
			file->dirEntryEnd.offset * DIR_ENTRY_DATA_SIZE, DIR_ENTRY_DATA_SIZE);

		// Flush any sectors in the disc cache
		if (!FUNC0(file->partition->cache)) {
			return EIO;
		}
	}

	file->modified = false;

	return 0;
}