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
struct _reent {int _errno; } ;
struct TYPE_4__ {int /*<<< orphan*/  pMutex; } ;
typedef  TYPE_1__ fs_dev_private_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 void* ENOMEM ; 
 int ENOTSUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__* FUNC3 (char const*) ; 
 char* FUNC4 (char const*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC5 (struct _reent *r, const char *oldName, const char *newName)
{
    fs_dev_private_t *dev = FUNC3(oldName);

    if(!r)
        return -1;

    if(!dev) {
        r->_errno = ENODEV;
        return -1;
    }

    if(!newName) {
       r->_errno = EINVAL;
       return -1;
    }

    FUNC0(dev->pMutex);

    char *real_oldpath = FUNC4(oldName, dev);
    if(!real_oldpath) {
        r->_errno = ENOMEM;
        FUNC1(dev->pMutex);
        return -1;
    }
    char *real_newpath = FUNC4(newName, dev);
    if(!real_newpath) {
        r->_errno = ENOMEM;
        FUNC2(real_oldpath);
        FUNC1(dev->pMutex);
        return -1;
    }

    //! TODO
    int result = -ENOTSUP;

    FUNC2(real_oldpath);
    FUNC2(real_newpath);

    FUNC1(dev->pMutex);

    if(result < 0) {
        r->_errno = result;
        return -1;
    }

    return 0;

}