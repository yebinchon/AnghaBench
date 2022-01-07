
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct _reent {int _errno; } ;
struct TYPE_8__ {int pMutex; int pCmd; int pClient; } ;
typedef TYPE_1__ sd_fat_private_t ;
struct TYPE_9__ {int dirHandle; TYPE_1__* dev; } ;
typedef TYPE_2__ sd_fat_dir_entry_t ;
struct TYPE_10__ {scalar_t__ dirStruct; } ;
typedef int FSDirectoryHandle ;
typedef TYPE_3__ DIR_ITER ;


 int ENODEV ;
 int ENOMEM ;
 int FSOpenDir (int ,int ,char*,int *,int) ;
 int OSLockMutex (int ) ;
 int OSUnlockMutex (int ) ;
 int free (char*) ;
 TYPE_1__* sd_fat_get_device_data (char const*) ;
 char* sd_fat_real_path (char const*,TYPE_1__*) ;

__attribute__((used)) static DIR_ITER *sd_fat_diropen_r (struct _reent *r, DIR_ITER *dirState, const char *path)
{
    sd_fat_private_t *dev = sd_fat_get_device_data(path);
    if(!dev) {
        r->_errno = ENODEV;
        return ((void*)0);
    }

    sd_fat_dir_entry_t *dirIter = (sd_fat_dir_entry_t *)dirState->dirStruct;

    OSLockMutex(dev->pMutex);

    char *real_path = sd_fat_real_path(path, dev);
    if(!real_path) {
        r->_errno = ENOMEM;
        OSUnlockMutex(dev->pMutex);
        return ((void*)0);
    }

    int dirHandle;

    int result = FSOpenDir(dev->pClient, dev->pCmd, real_path, (FSDirectoryHandle*)&dirHandle, -1);

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
