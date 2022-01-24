#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct stat {int dummy; } ;
struct _reent {int /*<<< orphan*/  _errno; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ PARTITION ;
typedef  int /*<<< orphan*/  DIR_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (char const*,char) ; 

int FUNC6 (struct _reent *r, const char *path, struct stat *st)
{
	PARTITION* partition = NULL;
	DIR_ENTRY dirEntry;

	/* Get the partition this file is on */
	partition = FUNC3 (path);
	if (partition == NULL)
   {
		r->_errno = ENODEV;
		return -1;
	}

	/* Move the path pointer to the start of the actual path */
	if (FUNC5 (path, ':') != NULL)
		path = FUNC5 (path, ':') + 1;
	if (FUNC5 (path, ':') != NULL)
   {
		r->_errno = EINVAL;
		return -1;
	}

	FUNC2(&partition->lock);

	/* Search for the file on the disc */
	if (!FUNC0 (partition, &dirEntry, path, NULL))
   {
		FUNC4(&partition->lock);
		r->_errno = ENOENT;
		return -1;
	}

	/* Fill in the stat struct */
	FUNC1 (partition, &dirEntry, st);

	FUNC4(&partition->lock);
	return 0;
}