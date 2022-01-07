
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct _reent {int _errno; } ;
struct TYPE_4__ {int pMutex; int pCmd; int pClient; } ;
typedef TYPE_1__ sd_fat_private_t ;


 int ENODEV ;
 int ENOMEM ;
 int FSChangeDir (int ,int ,char*,int) ;
 int OSLockMutex (int ) ;
 int OSUnlockMutex (int ) ;
 int free (char*) ;
 TYPE_1__* sd_fat_get_device_data (char const*) ;
 char* sd_fat_real_path (char const*,TYPE_1__*) ;

__attribute__((used)) static int sd_fat_chdir_r (struct _reent *r, const char *name)
{
    sd_fat_private_t *dev = sd_fat_get_device_data(name);
    if(!dev) {
        r->_errno = ENODEV;
        return -1;
    }

    OSLockMutex(dev->pMutex);

    char *real_path = sd_fat_real_path(name, dev);
    if(!real_path) {
        r->_errno = ENOMEM;
        OSUnlockMutex(dev->pMutex);
        return -1;
    }

    int result = FSChangeDir(dev->pClient, dev->pCmd, real_path, -1);

    free(real_path);

    OSUnlockMutex(dev->pMutex);

    if(result < 0) {
        r->_errno = result;
        return -1;
    }

    return 0;
}
