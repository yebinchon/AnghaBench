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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {char const* filename; int /*<<< orphan*/  entryData; } ;
typedef  int /*<<< orphan*/  PARTITION ;
typedef  TYPE_1__ DIR_ENTRY ;

/* Variables and functions */
 int MAX_ALIAS_LENGTH ; 
 size_t NAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC3 (char const*,char const*,size_t) ; 
 scalar_t__ FUNC4 (char const*,char*,int) ; 
 size_t FUNC5 (char const*,size_t) ; 

__attribute__((used)) static bool FUNC6 (PARTITION* partition, const char* name, uint32_t dirCluster) {
	DIR_ENTRY tempEntry;
	bool foundFile;
	char alias[MAX_ALIAS_LENGTH];
	size_t dirnameLength;

	dirnameLength = FUNC5(name, NAME_MAX);

	if (dirnameLength >= NAME_MAX) {
		return false;
	}

	// Make sure the entry doesn't already exist
	foundFile = FUNC1 (partition, &tempEntry, dirCluster);

	while (foundFile) {			// It hasn't already found the file
		// Check if the filename matches
		if ((dirnameLength == FUNC5(tempEntry.filename, NAME_MAX))
			&& (FUNC3(name, tempEntry.filename, dirnameLength) == 0)) {
				return true;
		}

		// Check if the alias matches
		FUNC0 (tempEntry.entryData, alias);
		if ((FUNC4(name, alias, MAX_ALIAS_LENGTH) == 0)) {
				return true;
		}
		foundFile = FUNC2 (partition, &tempEntry);
	}
	return false;
}