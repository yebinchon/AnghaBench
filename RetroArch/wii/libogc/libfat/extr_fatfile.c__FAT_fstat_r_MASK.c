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
struct stat {int /*<<< orphan*/  st_size; scalar_t__ st_ino; } ;
struct _reent {int /*<<< orphan*/  _errno; } ;
typedef  scalar_t__ ino_t ;
struct TYPE_10__ {int /*<<< orphan*/  dataEnd; int /*<<< orphan*/  dataStart; } ;
struct TYPE_9__ {int inUse; int /*<<< orphan*/  filesize; scalar_t__ startCluster; int /*<<< orphan*/  dirEntryEnd; int /*<<< orphan*/  dirEntryStart; TYPE_1__* partition; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ PARTITION ;
typedef  TYPE_2__ FILE_STRUCT ;
typedef  TYPE_3__ DIR_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_3__*,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4 (struct _reent *r, void *fd, struct stat *st) {
	FILE_STRUCT* file = (FILE_STRUCT*)  fd;
	PARTITION* partition;
	DIR_ENTRY fileEntry;

	if ((file == NULL) || (file->inUse == false))	 {
		// invalid file
		r->_errno = EBADF;
		return -1;
	}

	partition = file->partition;
	FUNC2(&partition->lock);

	// Get the file's entry data
	fileEntry.dataStart = file->dirEntryStart;
	fileEntry.dataEnd = file->dirEntryEnd;

	if (!FUNC0 (partition, &fileEntry)) {
		FUNC3(&partition->lock);
		r->_errno = EIO;
		return -1;
	}

	// Fill in the stat struct
	FUNC1 (partition, &fileEntry, st);

	// Fix stats that have changed since the file was openned
  	st->st_ino = (ino_t)(file->startCluster);		// The file serial number is the start cluster
	st->st_size = file->filesize;					// File size

	FUNC3(&partition->lock);
	return 0;
}