#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct _reent {void* _errno; } ;
struct TYPE_15__ {int /*<<< orphan*/  filename; int /*<<< orphan*/  entryData; } ;
struct TYPE_14__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  cache; int /*<<< orphan*/  cwdCluster; scalar_t__ readOnly; } ;
typedef  TYPE_1__ PARTITION ;
typedef  TYPE_2__ DIR_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  DIR_SEPARATOR ; 
 void* EEXIST ; 
 void* EINVAL ; 
 void* EIO ; 
 void* ENODEV ; 
 void* ENOENT ; 
 void* ENOSPC ; 
 void* ENOTDIR ; 
 void* EROFS ; 
 void* EXDEV ; 
 scalar_t__ NAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_2__*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_2__*,int) ; 
 char* FUNC10 (char const*,char) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const*,scalar_t__) ; 
 char* FUNC12 (char const*,int /*<<< orphan*/ ) ; 

int FUNC13 (struct _reent *r, const char *oldName, const char *newName)
{
	DIR_ENTRY oldDirEntry;
	DIR_ENTRY newDirEntry;
	const char *pathEnd;
	uint32_t dirCluster;

	/* Get the partition this directory is on */
	PARTITION *partition = FUNC7 (oldName);
	if (partition == NULL)
   {
		r->_errno = ENODEV;
		return -1;
	}

	FUNC6(&partition->lock);

	/* Make sure the same partition is used for the old and new names */
	if (partition != FUNC7 (newName))
   {
		FUNC8(&partition->lock);
		r->_errno = EXDEV;
		return -1;
	}

	/* Make sure we aren't trying to write to a read-only disc */
	if (partition->readOnly)
   {
		FUNC8(&partition->lock);
		r->_errno = EROFS;
		return -1;
	}

	/* Move the path pointer to the start of the actual path */
	if (FUNC10 (oldName, ':') != NULL)
		oldName = FUNC10 (oldName, ':') + 1;
	if (FUNC10 (oldName, ':') != NULL)
   {
		FUNC8(&partition->lock);
		r->_errno = EINVAL;
		return -1;
	}
	if (FUNC10 (newName, ':') != NULL)
		newName = FUNC10 (newName, ':') + 1;
	if (FUNC10 (newName, ':') != NULL)
   {
		FUNC8(&partition->lock);
		r->_errno = EINVAL;
		return -1;
	}

	/* Search for the file on the disc */
	if (!FUNC2 (partition, &oldDirEntry, oldName, NULL))
   {
		FUNC8(&partition->lock);
		r->_errno = ENOENT;
		return -1;
	}

	/* Make sure there is no existing file / directory with the new name */
	if (FUNC2 (partition, &newDirEntry, newName, NULL))
   {
		FUNC8(&partition->lock);
		r->_errno = EEXIST;
		return -1;
	}

	/* Create the new file entry
	 * Get the directory it has to go in */
	pathEnd = FUNC12 (newName, DIR_SEPARATOR);
	if (pathEnd == NULL)
   {
		/* No path was specified */
		dirCluster = partition->cwdCluster;
		pathEnd = newName;
	}
   else
   {
		/* Path was specified -- get the right dirCluster
		 * Recycling newDirEntry, since it needs to be recreated anyway */
		if (!FUNC2 (partition, &newDirEntry, newName, pathEnd) ||
			!FUNC4(&newDirEntry))
      {
			FUNC8(&partition->lock);
			r->_errno = ENOTDIR;
			return -1;
		}
		dirCluster = FUNC3 (partition, newDirEntry.entryData);
		/* Move the pathEnd past the last DIR_SEPARATOR */
		pathEnd += 1;
	}

	/* Copy the entry data */
	FUNC9 (&newDirEntry, &oldDirEntry, sizeof(DIR_ENTRY));

	/* Set the new name */
	FUNC11 (newDirEntry.filename, pathEnd, NAME_MAX - 1);

	/* Write the new entry */
	if (!FUNC1 (partition, &newDirEntry, dirCluster))
   {
		FUNC8(&partition->lock);
		r->_errno = ENOSPC;
		return -1;
	}

	/* Remove the old entry */
	if (!FUNC5 (partition, &oldDirEntry))
   {
		FUNC8(&partition->lock);
		r->_errno = EIO;
		return -1;
	}

	/* Flush any sectors in the disc cache */
	if (!FUNC0 (partition->cache))
   {
		FUNC8(&partition->lock);
		r->_errno = EIO;
		return -1;
	}

	FUNC8(&partition->lock);
	return 0;
}