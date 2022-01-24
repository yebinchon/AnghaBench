#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  int uint32_t ;
struct _reent {void* _errno; } ;
struct TYPE_14__ {char* entryData; int /*<<< orphan*/  filename; } ;
struct TYPE_13__ {int cwdCluster; int rootDirCluster; int /*<<< orphan*/  lock; int /*<<< orphan*/  cache; scalar_t__ readOnly; } ;
typedef  TYPE_1__ PARTITION ;
typedef  TYPE_2__ DIR_ENTRY ;

/* Variables and functions */
 void* ATTRIB_DIR ; 
 int /*<<< orphan*/  CLUSTER_FREE ; 
 int DIR_ENTRY_DATA_SIZE ; 
 int /*<<< orphan*/  DIR_ENTRY_aDate ; 
 size_t DIR_ENTRY_attributes ; 
 int /*<<< orphan*/  DIR_ENTRY_cDate ; 
 int /*<<< orphan*/  DIR_ENTRY_cTime ; 
 size_t DIR_ENTRY_cTime_ms ; 
 int /*<<< orphan*/  DIR_ENTRY_cluster ; 
 int /*<<< orphan*/  DIR_ENTRY_clusterHigh ; 
 int /*<<< orphan*/  DIR_ENTRY_mDate ; 
 int /*<<< orphan*/  DIR_ENTRY_mTime ; 
 size_t DIR_ENTRY_name ; 
 int /*<<< orphan*/  DIR_SEPARATOR ; 
 void* EEXIST ; 
 void* EINVAL ; 
 void* EIO ; 
 void* ENODEV ; 
 void* ENOSPC ; 
 void* ENOTDIR ; 
 void* EROFS ; 
 int FAT16_ROOT_DIR_CLUSTER ; 
 scalar_t__ NAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*,int) ; 
 int FUNC4 (TYPE_1__*,TYPE_2__*,char const*,char const*) ; 
 int FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC10 () ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,char,int) ; 
 char* FUNC16 (char const*,char) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char const*,scalar_t__) ; 
 char* FUNC18 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ,int) ; 

int FUNC20 (struct _reent *r, const char *path, int mode)
{
	PARTITION* partition = NULL;
	bool fileExists;
	DIR_ENTRY dirEntry;
	const char* pathEnd;
	uint32_t parentCluster, dirCluster;
	uint8_t newEntryData[DIR_ENTRY_DATA_SIZE];

	partition = FUNC13 (path);
	if (partition == NULL)
   {
		r->_errno = ENODEV;
		return -1;
	}

	/* Move the path pointer to the start of the actual path */
	if (FUNC16 (path, ':') != NULL)
		path = FUNC16 (path, ':') + 1;
	if (FUNC16 (path, ':') != NULL)
   {
		r->_errno = EINVAL;
		return -1;
	}

	FUNC12(&partition->lock);

	/* Search for the file/directory on the disc */
	fileExists = FUNC4 (partition, &dirEntry, path, NULL);

	/* Make sure it doesn't exist */
	if (fileExists)
   {
		FUNC14(&partition->lock);
		r->_errno = EEXIST;
		return -1;
	}

	if (partition->readOnly)
   {
		/* We can't write to a read-only partition */
		FUNC14(&partition->lock);
		r->_errno = EROFS;
		return -1;
	}

	/* Get the directory it has to go in */
	pathEnd = FUNC18 (path, DIR_SEPARATOR);
	if (pathEnd == NULL)
   {
		/* No path was specified */
		parentCluster = partition->cwdCluster;
		pathEnd = path;
	}
   else
   {
		/* Path was specified -- get the right parentCluster
		 * Recycling dirEntry, since it needs to be recreated anyway */
		if (!FUNC4 (partition, &dirEntry, path, pathEnd) ||
			!FUNC6(&dirEntry))
      {
			FUNC14(&partition->lock);
			r->_errno = ENOTDIR;
			return -1;
		}
		parentCluster = FUNC5 (partition, dirEntry.entryData);
		/* Move the pathEnd past the last DIR_SEPARATOR */
		pathEnd += 1;
	}
	/* Create the entry data */
	FUNC17 (dirEntry.filename, pathEnd, NAME_MAX - 1);
	FUNC15 (dirEntry.entryData, 0, DIR_ENTRY_DATA_SIZE);

	/* Set the creation time and date */
	dirEntry.entryData[DIR_ENTRY_cTime_ms] = 0;
	FUNC19 (dirEntry.entryData, DIR_ENTRY_cTime, FUNC11());
	FUNC19 (dirEntry.entryData, DIR_ENTRY_cDate, FUNC10());
	FUNC19 (dirEntry.entryData, DIR_ENTRY_mTime, FUNC11());
	FUNC19 (dirEntry.entryData, DIR_ENTRY_mDate, FUNC10());
	FUNC19 (dirEntry.entryData, DIR_ENTRY_aDate, FUNC10());

	/* Set the directory attribute */
	dirEntry.entryData[DIR_ENTRY_attributes] = ATTRIB_DIR;

	/* Get a cluster for the new directory */
	dirCluster = FUNC9 (partition, CLUSTER_FREE);
	if (!FUNC8(partition, dirCluster))
   {
		/* No space left on disc for the cluster */
		FUNC14(&partition->lock);
		r->_errno = ENOSPC;
		return -1;
	}
	FUNC19 (dirEntry.entryData, DIR_ENTRY_cluster, dirCluster);
	FUNC19 (dirEntry.entryData, DIR_ENTRY_clusterHigh, dirCluster >> 16);

	/* Write the new directory's entry to it's parent */
	if (!FUNC3 (partition, &dirEntry, parentCluster))
   {
		FUNC14(&partition->lock);
		r->_errno = ENOSPC;
		return -1;
	}

	/* Create the dot entry within the directory */
	FUNC15 (newEntryData, 0, DIR_ENTRY_DATA_SIZE);
	FUNC15 (newEntryData, ' ', 11);
	newEntryData[DIR_ENTRY_name] = '.';
	newEntryData[DIR_ENTRY_attributes] = ATTRIB_DIR;
	FUNC19 (newEntryData, DIR_ENTRY_cluster, dirCluster);
	FUNC19 (newEntryData, DIR_ENTRY_clusterHigh, dirCluster >> 16);

	/* Write it to the directory, erasing that sector in the process */
	FUNC0 ( partition->cache, newEntryData,
		FUNC7 (partition, dirCluster), 0, DIR_ENTRY_DATA_SIZE);


	/* Create the double dot entry within the directory */

	/* if ParentDir == Rootdir then ".."" always link to Cluster 0 */
	if(parentCluster == partition->rootDirCluster)
		parentCluster = FAT16_ROOT_DIR_CLUSTER;

	newEntryData[DIR_ENTRY_name + 1] = '.';
	FUNC19 (newEntryData, DIR_ENTRY_cluster, parentCluster);
	FUNC19 (newEntryData, DIR_ENTRY_clusterHigh, parentCluster >> 16);

	/* Write it to the directory */
	FUNC2 ( partition->cache, newEntryData,
		FUNC7 (partition, dirCluster), DIR_ENTRY_DATA_SIZE, DIR_ENTRY_DATA_SIZE);

	/* Flush any sectors in the disc cache */
	if (!FUNC1(partition->cache))
   {
		FUNC14(&partition->lock);
		r->_errno = EIO;
		return -1;
	}

	FUNC14(&partition->lock);
	return 0;
}