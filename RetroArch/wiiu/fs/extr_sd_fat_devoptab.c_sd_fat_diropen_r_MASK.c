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
struct _reent {int _errno; } ;
struct TYPE_8__ {int /*<<< orphan*/  pMutex; int /*<<< orphan*/  pCmd; int /*<<< orphan*/  pClient; } ;
typedef  TYPE_1__ sd_fat_private_t ;
struct TYPE_9__ {int dirHandle; TYPE_1__* dev; } ;
typedef  TYPE_2__ sd_fat_dir_entry_t ;
struct TYPE_10__ {scalar_t__ dirStruct; } ;
typedef  int /*<<< orphan*/  FSDirectoryHandle ;
typedef  TYPE_3__ DIR_ITER ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__* FUNC4 (char const*) ; 
 char* FUNC5 (char const*,TYPE_1__*) ; 

__attribute__((used)) static DIR_ITER *FUNC6 (struct _reent *r, DIR_ITER *dirState, const char *path)
{
    sd_fat_private_t *dev = FUNC4(path);
    if(!dev) {
        r->_errno = ENODEV;
        return NULL;
    }

    sd_fat_dir_entry_t *dirIter = (sd_fat_dir_entry_t *)dirState->dirStruct;

    FUNC1(dev->pMutex);

    char *real_path = FUNC5(path, dev);
    if(!real_path) {
        r->_errno = ENOMEM;
        FUNC2(dev->pMutex);
        return NULL;
    }

    int dirHandle;

    int result = FUNC0(dev->pClient, dev->pCmd, real_path, (FSDirectoryHandle*)&dirHandle, -1);

    FUNC3(real_path);

    FUNC2(dev->pMutex);

    if(result < 0)
    {
        r->_errno = result;
        return NULL;
    }

    dirIter->dev = dev;
    dirIter->dirHandle = dirHandle;

    return dirState;
}