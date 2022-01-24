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
struct TYPE_4__ {int /*<<< orphan*/  pMutex; int /*<<< orphan*/  pCmd; int /*<<< orphan*/  pClient; } ;
typedef  TYPE_1__ sd_fat_private_t ;

/* Variables and functions */
 int ENODEV ; 
 void* ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__* FUNC4 (char const*) ; 
 char* FUNC5 (char const*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC6 (struct _reent *r, const char *oldName, const char *newName)
{
    sd_fat_private_t *dev = FUNC4(oldName);
    if(!dev) {
        r->_errno = ENODEV;
        return -1;
    }

    FUNC1(dev->pMutex);

    char *real_oldpath = FUNC5(oldName, dev);
    if(!real_oldpath) {
        r->_errno = ENOMEM;
        FUNC2(dev->pMutex);
        return -1;
    }
    char *real_newpath = FUNC5(newName, dev);
    if(!real_newpath) {
        r->_errno = ENOMEM;
        FUNC3(real_oldpath);
        FUNC2(dev->pMutex);
        return -1;
    }

    int result = FUNC0(dev->pClient, dev->pCmd, real_oldpath, real_newpath, -1);

    FUNC3(real_oldpath);
    FUNC3(real_newpath);

    FUNC2(dev->pMutex);

    if(result < 0) {
        r->_errno = result;
        return -1;
    }

    return 0;

}