#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct _reent {int _errno; } ;
struct TYPE_6__ {TYPE_1__* dev; int /*<<< orphan*/  dirHandle; } ;
typedef  TYPE_2__ fs_dev_dir_entry_t ;
struct TYPE_7__ {scalar_t__ dirStruct; } ;
struct TYPE_5__ {int /*<<< orphan*/  pMutex; int /*<<< orphan*/  fsaFd; } ;
typedef  TYPE_3__ DIR_ITER ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3 (struct _reent *r, DIR_ITER *dirState)
{
    fs_dev_dir_entry_t *dirIter;

    if(!r)
        return -1;

    if(!dirState) {
        r->_errno = EINVAL;
        return -1;
    }

    dirIter = (fs_dev_dir_entry_t *)dirState->dirStruct;

    if(!dirIter->dev) {
        r->_errno = ENODEV;
        return -1;
    }

    FUNC1(dirIter->dev->pMutex);

    int result = FUNC0(dirIter->dev->fsaFd, dirIter->dirHandle);

    FUNC2(dirIter->dev->pMutex);

    if(result < 0)
    {
        r->_errno = result;
        return -1;
    }
    return 0;
}