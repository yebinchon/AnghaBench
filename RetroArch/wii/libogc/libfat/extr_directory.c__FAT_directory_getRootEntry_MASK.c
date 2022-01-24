#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ offset; scalar_t__ sector; scalar_t__ cluster; } ;
struct TYPE_8__ {char* filename; char* entryData; TYPE_1__ dataStart; TYPE_1__ dataEnd; } ;
struct TYPE_7__ {int rootDirCluster; } ;
typedef  TYPE_2__ PARTITION ;
typedef  TYPE_3__ DIR_ENTRY ;

/* Variables and functions */
 char ATTRIB_DIR ; 
 int DIR_ENTRY_DATA_SIZE ; 
 size_t DIR_ENTRY_attributes ; 
 int /*<<< orphan*/  DIR_ENTRY_cluster ; 
 int /*<<< orphan*/  DIR_ENTRY_clusterHigh ; 
 int NAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 

bool FUNC2 (PARTITION* partition, DIR_ENTRY* entry) {
	entry->dataStart.cluster = 0;
	entry->dataStart.sector = 0;
	entry->dataStart.offset = 0;

	entry->dataEnd = entry->dataStart;

	FUNC0 (entry->filename, '\0', NAME_MAX);
	entry->filename[0] = '.';

	FUNC0 (entry->entryData, 0, DIR_ENTRY_DATA_SIZE);
	FUNC0 (entry->entryData, ' ', 11);
	entry->entryData[0] = '.';

	entry->entryData[DIR_ENTRY_attributes] = ATTRIB_DIR;

	FUNC1 (entry->entryData, DIR_ENTRY_cluster, partition->rootDirCluster);
	FUNC1 (entry->entryData, DIR_ENTRY_clusterHigh, partition->rootDirCluster >> 16);

	return true;
}