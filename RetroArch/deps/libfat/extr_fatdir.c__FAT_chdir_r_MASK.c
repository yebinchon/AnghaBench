#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct _reent {int /*<<< orphan*/  _errno; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ PARTITION ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOTDIR ; 
 scalar_t__ FUNC0 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*,char) ; 

int FUNC5 (struct _reent *r, const char *path)
{
	PARTITION* partition = NULL;

	/* Get the partition this directory is on */
	partition = FUNC2 (path);
	if (partition == NULL)
   {
		r->_errno = ENODEV;
		return -1;
	}

	/* Move the path pointer to the start of the actual path */
	if (FUNC4 (path, ':') != NULL)
		path = FUNC4 (path, ':') + 1;
	if (FUNC4 (path, ':') != NULL)
   {
		r->_errno = EINVAL;
		return -1;
	}

	FUNC1(&partition->lock);

	/* Try changing directory */
	if (FUNC0 (partition, path))
   {
		/* Successful */
		FUNC3(&partition->lock);
		return 0;
	}

   /* Failed */
   FUNC3(&partition->lock);
   r->_errno = ENOTDIR;
   return -1;
}