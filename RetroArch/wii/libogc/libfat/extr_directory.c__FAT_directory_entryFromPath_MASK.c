#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_13__ {char* filename; int* entryData; } ;
struct TYPE_12__ {scalar_t__ rootDirCluster; scalar_t__ cwdCluster; scalar_t__ filesysType; } ;
typedef  TYPE_1__ PARTITION ;
typedef  TYPE_2__ DIR_ENTRY ;

/* Variables and functions */
 int ATTRIB_DIR ; 
 scalar_t__ CLUSTER_ROOT ; 
 size_t DIR_ENTRY_attributes ; 
 char const DIR_SEPARATOR ; 
 scalar_t__ FS_FAT32 ; 
 int MAX_ALIAS_LENGTH ; 
 size_t NAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (int*,char*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int*) ; 
 int FUNC2 (TYPE_1__*,TYPE_2__*,scalar_t__) ; 
 int FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC5 (char const*,char*,size_t) ; 
 char* FUNC6 (char const*,char const) ; 
 size_t FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char const*,char*,size_t) ; 
 scalar_t__ FUNC9 (char*,char const*,size_t) ; 
 size_t FUNC10 (char*,int) ; 

bool FUNC11 (PARTITION* partition, DIR_ENTRY* entry, const char* path, const char* pathEnd) {
	size_t dirnameLength;
	const char* pathPosition;
	const char* nextPathPosition;
	uint32_t dirCluster;
	bool foundFile;
	char alias[MAX_ALIAS_LENGTH];
	bool found, notFound;

	pathPosition = path;

	found = false;
	notFound = false;

	if (pathEnd == NULL) {
		// Set pathEnd to the end of the path string
		pathEnd = FUNC6 (path, '\0');
	}

	if (pathPosition[0] == DIR_SEPARATOR) {
		// Start at root directory
		dirCluster = partition->rootDirCluster;
		// Consume separator(s)
		while (pathPosition[0] == DIR_SEPARATOR) {
			pathPosition++;
		}
		// If the path is only specifying a directory in the form of "/" return it
		if (pathPosition >= pathEnd) {
			FUNC4 (partition, entry);
			found = true;
		}
	} else {
		// Start in current working directory
		dirCluster = partition->cwdCluster;
	}

	while (!found && !notFound) {
		// Get the name of the next required subdirectory within the path
		nextPathPosition = FUNC6 (pathPosition, DIR_SEPARATOR);
		if (nextPathPosition != NULL) {
			dirnameLength = nextPathPosition - pathPosition;
		} else {
			dirnameLength = FUNC7(pathPosition);
		}

		if (dirnameLength > NAME_MAX) {
			// The path is too long to bother with
			return false;
		}

		// Check for "." or ".." when the dirCluster is root cluster
		// These entries do not exist, so we must fake it
		if ((dirCluster == partition->rootDirCluster)
		&&  ((FUNC9(".", pathPosition, dirnameLength) == 0)
		  || (FUNC9("..", pathPosition, dirnameLength) == 0))) {
			foundFile = true;
			FUNC4(partition, entry);
		} else {
			// Look for the directory within the path
			foundFile = FUNC2 (partition, entry, dirCluster);

			while (foundFile && !found && !notFound) {			// It hasn't already found the file
				// Check if the filename matches
				if ((dirnameLength == FUNC10(entry->filename, NAME_MAX))
					&& (FUNC5(pathPosition, entry->filename, dirnameLength) == 0)) {
						found = true;
				}

				// Check if the alias matches
				FUNC0 (entry->entryData, alias);
				if ((dirnameLength == FUNC10(alias, MAX_ALIAS_LENGTH))
					&& (FUNC8(pathPosition, alias, dirnameLength) == 0)) {
						found = true;
				}

				if (found && !(entry->entryData[DIR_ENTRY_attributes] & ATTRIB_DIR) && (nextPathPosition != NULL)) {
					// Make sure that we aren't trying to follow a file instead of a directory in the path
					found = false;
				}

				if (!found) {
					foundFile = FUNC3 (partition, entry);
				}
			}
		}

		if (!foundFile) {
			// Check that the search didn't get to the end of the directory
			notFound = true;
			found = false;
		} else if ((nextPathPosition == NULL) || (nextPathPosition >= pathEnd)) {
			// Check that we reached the end of the path
			found = true;
		} else if (entry->entryData[DIR_ENTRY_attributes] & ATTRIB_DIR) {
			dirCluster = FUNC1 (partition, entry->entryData);
			if (dirCluster == CLUSTER_ROOT)
				dirCluster = partition->rootDirCluster;
			pathPosition = nextPathPosition;
			// Consume separator(s)
			while (pathPosition[0] == DIR_SEPARATOR) {
				pathPosition++;
			}
			// The requested directory was found
			if (pathPosition >= pathEnd)  {
				found = true;
			} else {
				found = false;
			}
		}
	}

	if (found && !notFound) {
		if (partition->filesysType == FS_FAT32 && (entry->entryData[DIR_ENTRY_attributes] & ATTRIB_DIR) &&
			FUNC1 (partition, entry->entryData) == CLUSTER_ROOT)
		{
			// On FAT32 it should specify an actual cluster for the root entry,
			// not cluster 0 as on FAT16
			FUNC4 (partition, entry);
		}
		return true;
	} else {
		return false;
	}
}