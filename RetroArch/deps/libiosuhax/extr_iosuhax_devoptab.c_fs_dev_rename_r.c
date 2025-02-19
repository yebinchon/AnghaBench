
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct _reent {int _errno; } ;
struct TYPE_4__ {int pMutex; } ;
typedef TYPE_1__ fs_dev_private_t ;


 int EINVAL ;
 int ENODEV ;
 void* ENOMEM ;
 int ENOTSUP ;
 int OSLockMutex (int ) ;
 int OSUnlockMutex (int ) ;
 int free (char*) ;
 TYPE_1__* fs_dev_get_device_data (char const*) ;
 char* fs_dev_real_path (char const*,TYPE_1__*) ;

__attribute__((used)) static int fs_dev_rename_r (struct _reent *r, const char *oldName, const char *newName)
{
    fs_dev_private_t *dev = fs_dev_get_device_data(oldName);

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

    OSLockMutex(dev->pMutex);

    char *real_oldpath = fs_dev_real_path(oldName, dev);
    if(!real_oldpath) {
        r->_errno = ENOMEM;
        OSUnlockMutex(dev->pMutex);
        return -1;
    }
    char *real_newpath = fs_dev_real_path(newName, dev);
    if(!real_newpath) {
        r->_errno = ENOMEM;
        free(real_oldpath);
        OSUnlockMutex(dev->pMutex);
        return -1;
    }


    int result = -ENOTSUP;

    free(real_oldpath);
    free(real_newpath);

    OSUnlockMutex(dev->pMutex);

    if(result < 0) {
        r->_errno = result;
        return -1;
    }

    return 0;

}
