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
typedef  int /*<<< orphan*/  PARTITION ;
typedef  int /*<<< orphan*/  DIR_ENTRY ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 char* FUNC2 (char const*,char) ; 

bool FUNC3(const char *path, DIR_ENTRY *dirEntry) {
	PARTITION *partition = FUNC1(path);

	// Check Partition
	if( !partition )
		return false;

	// Move the path pointer to the start of the actual path
	if (FUNC2 (path, ':') != NULL) {
		path = FUNC2 (path, ':') + 1;
	}
	if (FUNC2 (path, ':') != NULL) {
		return false;
	}

	// Search for the file on the disc
	return FUNC0 (partition, dirEntry, path, NULL);

}