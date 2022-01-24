#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct _reent {void* _errno; } ;
typedef  int ssize_t ;
struct TYPE_9__ {unsigned int byte; scalar_t__ cluster; size_t sector; } ;
struct TYPE_8__ {scalar_t__ currentPosition; scalar_t__ filesize; scalar_t__ startCluster; TYPE_3__ rwPosition; TYPE_1__* partition; int /*<<< orphan*/  read; int /*<<< orphan*/  inUse; } ;
struct TYPE_7__ {unsigned int bytesPerSector; size_t sectorsPerCluster; size_t bytesPerCluster; int /*<<< orphan*/  lock; int /*<<< orphan*/ * cache; } ;
typedef  TYPE_1__ PARTITION ;
typedef  TYPE_2__ FILE_STRUCT ;
typedef  TYPE_3__ FILE_POSITION ;
typedef  int /*<<< orphan*/  CACHE ;

/* Variables and functions */
 scalar_t__ CLUSTER_EOF ; 
 scalar_t__ CLUSTER_FREE ; 
 void* EBADF ; 
 void* EIO ; 
 void* EOVERFLOW ; 
 size_t LIMIT_SECTORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,unsigned int,char*) ; 
 size_t FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

ssize_t FUNC7 (struct _reent *r, void *fd, char *ptr, size_t len) {
	FILE_STRUCT* file = (FILE_STRUCT*)  fd;
	PARTITION* partition;
	CACHE* cache;
	FILE_POSITION position;
	uint32_t tempNextCluster;
	unsigned int tempVar;
	size_t remain;
	bool flagNoError = true;

	// Short circuit cases where len is 0 (or less)
	if (len <= 0) {
		return 0;
	}

	// Make sure we can actually read from the file
	if ((file == NULL) || !file->inUse || !file->read) {
		r->_errno = EBADF;
		return -1;
	}

	partition = file->partition;
	FUNC5(&partition->lock);

	// Don't try to read if the read pointer is past the end of file
	if (file->currentPosition >= file->filesize || file->startCluster == CLUSTER_FREE) {
		r->_errno = EOVERFLOW;
		FUNC6(&partition->lock);
		return 0;
	}

	// Don't read past end of file
	if (len + file->currentPosition > file->filesize) {
		r->_errno = EOVERFLOW;
		len = file->filesize - file->currentPosition;
	}

	remain = len;
	position = file->rwPosition;
	cache = file->partition->cache;

	// Align to sector
	tempVar = partition->bytesPerSector - position.byte;
	if (tempVar > remain) {
		tempVar = remain;
	}

	if ((tempVar < partition->bytesPerSector) && flagNoError)
	{
		FUNC0 ( cache, ptr, FUNC2 (partition, position.cluster) + position.sector,
			position.byte, tempVar);

		remain -= tempVar;
		ptr += tempVar;

		position.byte += tempVar;
		if (position.byte >= partition->bytesPerSector) {
			position.byte = 0;
			position.sector++;
		}
	}

	// align to cluster
	// tempVar is number of sectors to read
	if (remain > (partition->sectorsPerCluster - position.sector) * partition->bytesPerSector) {
		tempVar = partition->sectorsPerCluster - position.sector;
	} else {
		tempVar = remain / partition->bytesPerSector;
	}

	if ((tempVar > 0) && flagNoError) {
		if (! FUNC1 (cache, FUNC2 (partition, position.cluster) + position.sector,
			tempVar, ptr))
		{
			flagNoError = false;
			r->_errno = EIO;
		} else {
			ptr += tempVar * partition->bytesPerSector;
			remain -= tempVar * partition->bytesPerSector;
			position.sector += tempVar;
		}
	}

	// Move onto next cluster
	// It should get to here without reading anything if a cluster is due to be allocated
	if ((position.sector >= partition->sectorsPerCluster) && flagNoError) {
		tempNextCluster = FUNC4(partition, position.cluster);
		if ((remain == 0) && (tempNextCluster == CLUSTER_EOF)) {
			position.sector = partition->sectorsPerCluster;
		} else if (!FUNC3(partition, tempNextCluster)) {
			r->_errno = EIO;
			flagNoError = false;
		} else {
			position.sector = 0;
			position.cluster = tempNextCluster;
		}
	}

	// Read in whole clusters, contiguous blocks at a time
	while ((remain >= partition->bytesPerCluster) && flagNoError) {
		uint32_t chunkEnd;
		uint32_t nextChunkStart = position.cluster;
		size_t chunkSize = 0;

		do {
			chunkEnd = nextChunkStart;
			nextChunkStart = FUNC4 (partition, chunkEnd);
			chunkSize += partition->bytesPerCluster;
		} while ((nextChunkStart == chunkEnd + 1) &&
#ifdef LIMIT_SECTORS
		 	(chunkSize + partition->bytesPerCluster <= LIMIT_SECTORS * partition->bytesPerSector) &&
#endif
			(chunkSize + partition->bytesPerCluster <= remain));

		if (!FUNC1 (cache, FUNC2 (partition, position.cluster),
				chunkSize / partition->bytesPerSector, ptr))
		{
			flagNoError = false;
			r->_errno = EIO;
			break;
		}
		ptr += chunkSize;
		remain -= chunkSize;

		// Advance to next cluster
		if ((remain == 0) && (nextChunkStart == CLUSTER_EOF)) {
			position.sector = partition->sectorsPerCluster;
			position.cluster = chunkEnd;
		} else if (!FUNC3(partition, nextChunkStart)) {
			r->_errno = EIO;
			flagNoError = false;
		} else {
			position.sector = 0;
			position.cluster = nextChunkStart;
		}
	}

	// Read remaining sectors
	tempVar = remain / partition->bytesPerSector; // Number of sectors left
	if ((tempVar > 0) && flagNoError) {
		if (!FUNC1 (cache, FUNC2 (partition, position.cluster),
			tempVar, ptr))
		{
			flagNoError = false;
			r->_errno = EIO;
		} else {
			ptr += tempVar * partition->bytesPerSector;
			remain -= tempVar * partition->bytesPerSector;
			position.sector += tempVar;
		}
	}

	// Last remaining sector
	// Check if anything is left
	if ((remain > 0) && flagNoError) {
		FUNC0 ( cache, ptr,
			FUNC2 (partition, position.cluster) + position.sector, 0, remain);
		position.byte += remain;
		remain = 0;
	}

	// Length read is the wanted length minus the stuff not read
	len = len - remain;

	// Update file information
	file->rwPosition = position;
	file->currentPosition += len;

	FUNC6(&partition->lock);
	return len;
}