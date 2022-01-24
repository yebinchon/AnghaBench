#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int ucs2_t ;
struct TYPE_10__ {scalar_t__ cluster; scalar_t__ sector; int offset; } ;
struct TYPE_11__ {int /*<<< orphan*/  filename; int /*<<< orphan*/  entryData; TYPE_2__ dataStart; TYPE_2__ dataEnd; } ;
struct TYPE_9__ {int /*<<< orphan*/  cache; } ;
typedef  TYPE_1__ PARTITION ;
typedef  TYPE_2__ DIR_ENTRY_POSITION ;
typedef  TYPE_3__ DIR_ENTRY ;

/* Variables and functions */
 int DIR_ENTRY_DATA_SIZE ; 
 int LFN_END ; 
 size_t LFN_offset_ordinal ; 
 size_t* LFN_offset_table ; 
 int MAX_LFN_LENGTH ; 
 int /*<<< orphan*/  NAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,TYPE_2__*,int) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 

bool FUNC7 (PARTITION* partition, DIR_ENTRY* entry) {
	DIR_ENTRY_POSITION entryStart = entry->dataStart;
	DIR_ENTRY_POSITION entryEnd = entry->dataEnd;
	bool entryStillValid;
	bool finished;
	ucs2_t lfn[MAX_LFN_LENGTH];
	int i;
	int lfnPos;
	uint8_t entryData[DIR_ENTRY_DATA_SIZE];

	FUNC6 (entry->filename, '\0', NAME_MAX);

	// Create an empty directory entry to overwrite the old ones with
	for ( entryStillValid = true, finished = false;
		entryStillValid && !finished;
		entryStillValid = FUNC2 (partition, &entryStart, false))
	{
		FUNC0 (partition->cache, entryData,
			FUNC4(partition, entryStart.cluster) + entryStart.sector,
			entryStart.offset * DIR_ENTRY_DATA_SIZE, DIR_ENTRY_DATA_SIZE);

		if ((entryStart.cluster == entryEnd.cluster)
			&& (entryStart.sector == entryEnd.sector)
			&& (entryStart.offset == entryEnd.offset)) {
			// Copy the entry data and stop, since this is the last section of the directory entry
			FUNC5 (entry->entryData, entryData, DIR_ENTRY_DATA_SIZE);
			finished = true;
		} else {
			// Copy the long file name data
			lfnPos = ((entryData[LFN_offset_ordinal] & ~LFN_END) - 1) * 13;
			for (i = 0; i < 13; i++) {
				if (lfnPos + i < MAX_LFN_LENGTH - 1) {
					lfn[lfnPos + i] = entryData[LFN_offset_table[i]] | (entryData[LFN_offset_table[i]+1] << 8);
				}
			}
		}
	}

	if (!entryStillValid) {
		return false;
	}

	entryStart = entry->dataStart;
	if ((entryStart.cluster == entryEnd.cluster)
		&& (entryStart.sector == entryEnd.sector)
		&& (entryStart.offset == entryEnd.offset)) {
		// Since the entry doesn't have a long file name, extract the short filename
		if (!FUNC1 (entry->entryData, entry->filename)) {
			return false;
		}
	} else {
		// Encode the long file name into a multibyte string
		if (FUNC3 (entry->filename, lfn, NAME_MAX) == (size_t)-1) {
			return false;
		}
	}

	return true;
}