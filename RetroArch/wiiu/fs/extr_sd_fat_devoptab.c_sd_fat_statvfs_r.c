
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct statvfs {int f_bsize; int f_frsize; int f_blocks; int f_bfree; int f_bavail; int f_files; int f_ffree; int f_fsid; int f_namemax; scalar_t__ f_flag; } ;
struct _reent {int _errno; } ;
struct TYPE_4__ {int pMutex; int pCmd; int pClient; } ;
typedef TYPE_1__ sd_fat_private_t ;


 int ENODEV ;
 int ENOMEM ;
 int FSGetFreeSpaceSize (int ,int ,char*,int*,int) ;
 int OSLockMutex (int ) ;
 int OSUnlockMutex (int ) ;
 int free (char*) ;
 int memset (struct statvfs*,int ,int) ;
 TYPE_1__* sd_fat_get_device_data (char const*) ;
 char* sd_fat_real_path (char const*,TYPE_1__*) ;

__attribute__((used)) static int sd_fat_statvfs_r (struct _reent *r, const char *path, struct statvfs *buf)
{
    sd_fat_private_t *dev = sd_fat_get_device_data(path);
    if(!dev) {
        r->_errno = ENODEV;
        return -1;
    }

    OSLockMutex(dev->pMutex);


    memset(buf, 0, sizeof(struct statvfs));

    char *real_path = sd_fat_real_path(path, dev);
    if(!real_path) {
        r->_errno = ENOMEM;
        OSUnlockMutex(dev->pMutex);
        return -1;
    }

    u64 size;

    int result = FSGetFreeSpaceSize(dev->pClient, dev->pCmd, real_path, &size, -1);

    free(real_path);

    if(result < 0) {
        r->_errno = result;
        OSUnlockMutex(dev->pMutex);
        return -1;
    }


    buf->f_bsize = 512;


    buf->f_frsize = 512;


    buf->f_blocks = size >> 9;


    buf->f_bfree = buf->f_bavail = size >> 9;


    buf->f_files = 0xffffffff;


    buf->f_ffree = 0xffffffff;


    buf->f_fsid = (int)dev;


    buf->f_flag = 0;


    buf->f_namemax = 255;

    OSUnlockMutex(dev->pMutex);

    return 0;
}
