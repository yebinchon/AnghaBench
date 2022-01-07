
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct _reent {int _errno; } ;
struct TYPE_8__ {int pMutex; int fsaFd; } ;
typedef TYPE_1__ fs_dev_private_t ;
struct TYPE_9__ {int dirHandle; TYPE_1__* dev; } ;
typedef TYPE_2__ fs_dev_dir_entry_t ;
struct TYPE_10__ {scalar_t__ dirStruct; } ;
typedef TYPE_3__ DIR_ITER ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int IOSUHAX_FSA_OpenDir (int ,char*,int*) ;
 int OSLockMutex (int ) ;
 int OSUnlockMutex (int ) ;
 int free (char*) ;
 TYPE_1__* fs_dev_get_device_data (char const*) ;
 char* fs_dev_real_path (char const*,TYPE_1__*) ;

__attribute__((used)) static DIR_ITER *fs_dev_diropen_r (struct _reent *r, DIR_ITER *dirState, const char *path)
{
    fs_dev_private_t *dev = fs_dev_get_device_data(path);

    if(!r)
        return ((void*)0);

    if(!dev) {
        r->_errno = ENODEV;
        return ((void*)0);
    }

    if(!dirState) {
       r->_errno = EINVAL;
       return ((void*)0);
    }

    fs_dev_dir_entry_t *dirIter = (fs_dev_dir_entry_t *)dirState->dirStruct;

    OSLockMutex(dev->pMutex);

    char *real_path = fs_dev_real_path(path, dev);
    if(!real_path) {
        r->_errno = ENOMEM;
        OSUnlockMutex(dev->pMutex);
        return ((void*)0);
    }

    int dirHandle;

    int result = IOSUHAX_FSA_OpenDir(dev->fsaFd, real_path, &dirHandle);

    free(real_path);

    OSUnlockMutex(dev->pMutex);

    if(result < 0)
    {
        r->_errno = result;
        return ((void*)0);
    }

    dirIter->dev = dev;
    dirIter->dirHandle = dirHandle;

    return dirState;
}
