#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct stat {int dummy; } ;
struct _reent {int /*<<< orphan*/  _errno; } ;
struct TYPE_11__ {int /*<<< orphan*/  filename; } ;
struct TYPE_10__ {int /*<<< orphan*/  lock; } ;
struct TYPE_9__ {scalar_t__ dirStruct; } ;
struct TYPE_8__ {TYPE_4__* partition; TYPE_5__ currentEntry; scalar_t__ validEntry; int /*<<< orphan*/  inUse; } ;
typedef  TYPE_1__ DIR_STATE_STRUCT ;
typedef  TYPE_2__ DIR_ITER ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 int /*<<< orphan*/  NAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,TYPE_5__*,struct stat*) ; 
 scalar_t__ FUNC1 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5 (struct _reent *r, DIR_ITER *dirState, char *filename, struct stat *filestat) {
	DIR_STATE_STRUCT* state = (DIR_STATE_STRUCT*) (dirState->dirStruct);

	FUNC2(&state->partition->lock);

	// Make sure we are still using this entry
	if (!state->inUse) {
		FUNC3(&state->partition->lock);
		r->_errno = EBADF;
		return -1;
	}

	// Make sure there is another file to report on
	if (! state->validEntry) {
		FUNC3(&state->partition->lock);
		return -1;
	}

	// Get the filename
	FUNC4 (filename, state->currentEntry.filename, NAME_MAX);
	// Get the stats, if requested
	if (filestat != NULL) {
		FUNC0 (state->partition, &(state->currentEntry), filestat);
	}

	// Look for the next entry for use next time
	state->validEntry =
		FUNC1 (state->partition, &(state->currentEntry));

	FUNC3(&state->partition->lock);
	return 0;
}