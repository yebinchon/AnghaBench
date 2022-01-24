#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct statvfs {int f_flag; unsigned int f_bfree; unsigned int f_bavail; unsigned int f_ffree; unsigned int f_favail; int /*<<< orphan*/  f_namemax; int /*<<< orphan*/  f_fsid; void* f_files; void* f_blocks; int /*<<< orphan*/  f_frsize; int /*<<< orphan*/  f_bsize; } ;
struct _reent {int /*<<< orphan*/  _errno; } ;
struct TYPE_6__ {unsigned int numberFreeCluster; void* lastCluster; } ;
struct TYPE_7__ {scalar_t__ filesysType; int /*<<< orphan*/  lock; scalar_t__ readOnly; int /*<<< orphan*/  disc; TYPE_1__ fat; int /*<<< orphan*/  bytesPerCluster; } ;
typedef  TYPE_2__ PARTITION ;

/* Variables and functions */
 void* CLUSTER_FIRST ; 
 int /*<<< orphan*/  ENODEV ; 
 scalar_t__ FS_FAT32 ; 
 int /*<<< orphan*/  NAME_MAX ; 
 int ST_NOSUID ; 
 int ST_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int*,char*,int) ; 

int FUNC7 (struct _reent *r, const char *path, struct statvfs *buf)
{
	PARTITION* partition = NULL;
	unsigned int freeClusterCount;

	/* Get the partition of the requested path */
	partition = FUNC4 (path);
	if (partition == NULL)
   {
		r->_errno = ENODEV;
		return -1;
	}

	FUNC2(&partition->lock);

	if(FUNC6(&buf->f_flag, "SCAN", 4) == 0)
	{
		/* Special command was given to sync the numberFreeCluster */
		FUNC3(partition);
	}

	if(partition->filesysType == FS_FAT32)
		freeClusterCount = partition->fat.numberFreeCluster;
	else
		freeClusterCount = FUNC1 (partition);

	/* FAT clusters = POSIX blocks */
	buf->f_bsize = partition->bytesPerCluster;		/* File system block size. */
	buf->f_frsize = partition->bytesPerCluster;	/* Fundamental file system block size. */

	buf->f_blocks	= partition->fat.lastCluster - CLUSTER_FIRST + 1; /* Total number of blocks on file system in units of f_frsize. */
	buf->f_bfree = freeClusterCount;	/* Total number of free blocks. */
	buf->f_bavail	= freeClusterCount;	/* Number of free blocks available to non-privileged process. */

	/* Treat requests for info on inodes as clusters */
	buf->f_files = partition->fat.lastCluster - CLUSTER_FIRST + 1;	/* Total number of file serial numbers. */
	buf->f_ffree = freeClusterCount;	/* Total number of free file serial numbers. */
	buf->f_favail = freeClusterCount;	/* Number of file serial numbers available to non-privileged process. */

	/* File system ID. 32bit ioType value */
	buf->f_fsid = FUNC0(partition->disc);

	/* Bit mask of f_flag values. */
	buf->f_flag = ST_NOSUID /* No support for ST_ISUID and ST_ISGID file mode bits */
		| (partition->readOnly ? ST_RDONLY /* Read only file system */ : 0 ) ;
	/* Maximum filename length. */
	buf->f_namemax = NAME_MAX;

	FUNC5(&partition->lock);
	return 0;
}