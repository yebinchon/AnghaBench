
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct _reent {int _errno; } ;
struct TYPE_6__ {TYPE_1__* dev; int dirHandle; } ;
typedef TYPE_2__ fs_dev_dir_entry_t ;
struct TYPE_7__ {scalar_t__ dirStruct; } ;
struct TYPE_5__ {int pMutex; int fsaFd; } ;
typedef TYPE_3__ DIR_ITER ;


 int EINVAL ;
 int ENODEV ;
 int IOSUHAX_FSA_CloseDir (int ,int ) ;
 int OSLockMutex (int ) ;
 int OSUnlockMutex (int ) ;

__attribute__((used)) static int fs_dev_dirclose_r (struct _reent *r, DIR_ITER *dirState)
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

    OSLockMutex(dirIter->dev->pMutex);

    int result = IOSUHAX_FSA_CloseDir(dirIter->dev->fsaFd, dirIter->dirHandle);

    OSUnlockMutex(dirIter->dev->pMutex);

    if(result < 0)
    {
        r->_errno = result;
        return -1;
    }
    return 0;
}
