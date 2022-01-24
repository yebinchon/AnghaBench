#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct _reent {int /*<<< orphan*/  _errno; } ;
struct TYPE_15__ {int /*<<< orphan*/  lock; } ;
struct TYPE_14__ {int /*<<< orphan*/  entryData; } ;
struct TYPE_13__ {scalar_t__ dirStruct; } ;
struct TYPE_12__ {int inUse; TYPE_4__* partition; int /*<<< orphan*/  startCluster; int /*<<< orphan*/  currentEntry; int /*<<< orphan*/  validEntry; } ;
typedef  TYPE_1__ DIR_STATE_STRUCT ;
typedef  TYPE_2__ DIR_ITER ;
typedef  TYPE_3__ DIR_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOTDIR ; 
 int FUNC0 (TYPE_4__*,TYPE_3__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (char const*,char) ; 

DIR_ITER* FUNC8(struct _reent *r, DIR_ITER *dirState, const char *path)
{
	DIR_ENTRY dirEntry;
	DIR_STATE_STRUCT* state = (DIR_STATE_STRUCT*) (dirState->dirStruct);
	bool fileExists;

	state->partition = FUNC5 (path);
	if (state->partition == NULL)
   {
		r->_errno = ENODEV;
		return NULL;
	}

	/* Move the path pointer to the start of the actual path */
	if (FUNC7 (path, ':') != NULL)
		path = FUNC7 (path, ':') + 1;
	if (FUNC7 (path, ':') != NULL)
   {
		r->_errno = EINVAL;
		return NULL;
	}

	FUNC4(&state->partition->lock);

	/* Get the start cluster of the directory */
	fileExists = FUNC0 (state->partition, &dirEntry, path, NULL);

	if (!fileExists)
   {
		FUNC6(&state->partition->lock);
		r->_errno = ENOENT;
		return NULL;
	}

	/* Make sure it is a directory */
	if (! FUNC3 (&dirEntry))
   {
		FUNC6(&state->partition->lock);
		r->_errno = ENOTDIR;
		return NULL;
	}

	/* Save the start cluster for use when resetting the directory data */
	state->startCluster = FUNC1 (state->partition, dirEntry.entryData);

	/* Get the first entry for use with a call to dirnext */
	state->validEntry =
		FUNC2 (state->partition, &(state->currentEntry), state->startCluster);

	/* We are now using this entry */
	state->inUse = true;
	FUNC6(&state->partition->lock);
	return (DIR_ITER*) state;
}