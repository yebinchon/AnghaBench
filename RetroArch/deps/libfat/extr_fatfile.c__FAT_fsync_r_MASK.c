#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct _reent {int _errno; } ;
struct TYPE_5__ {TYPE_1__* partition; int /*<<< orphan*/  inUse; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ FILE_STRUCT ;

/* Variables and functions */
 int EBADF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3 (struct _reent *r, void *fd) {
	FILE_STRUCT* file = (FILE_STRUCT*)  fd;
	int ret = 0;

	if (!file->inUse) {
		r->_errno = EBADF;
		return -1;
	}

	FUNC0(&file->partition->lock);

	ret = FUNC1 (file);
	if (ret != 0) {
		r->_errno = ret;
		ret = -1;
	}

	FUNC2(&file->partition->lock);

	return ret;
}