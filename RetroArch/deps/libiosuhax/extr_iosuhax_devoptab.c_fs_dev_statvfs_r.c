
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct statvfs {int f_bsize; int f_frsize; int f_blocks; int f_bfree; int f_bavail; int f_files; int f_ffree; int f_fsid; int f_namemax; scalar_t__ f_flag; } ;
struct _reent {int _errno; } ;
struct TYPE_4__ {int pMutex; int fsaFd; } ;
typedef TYPE_1__ fs_dev_private_t ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int IOSUHAX_FSA_GetDeviceInfo (int ,char*,int,int *) ;
 int OSLockMutex (int ) ;
 int OSUnlockMutex (int ) ;
 int free (char*) ;
 TYPE_1__* fs_dev_get_device_data (char const*) ;
 char* fs_dev_real_path (char const*,TYPE_1__*) ;
 int memset (struct statvfs*,int ,int) ;

__attribute__((used)) static int fs_dev_statvfs_r (struct _reent *r, const char *path, struct statvfs *buf)
{
    fs_dev_private_t *dev = fs_dev_get_device_data(path);

    if(!r)
        return -1;

    if(!dev) {
        r->_errno = ENODEV;
        return -1;
    }

    if(!buf) {
        r->_errno = EINVAL;
        return -1;
    }

    OSLockMutex(dev->pMutex);


    memset(buf, 0, sizeof(struct statvfs));

    char *real_path = fs_dev_real_path(path, dev);
    if(!real_path) {
        r->_errno = ENOMEM;
        OSUnlockMutex(dev->pMutex);
        return -1;
    }

    uint64_t size;

    int result = IOSUHAX_FSA_GetDeviceInfo(dev->fsaFd, real_path, 0x00, (uint32_t*)&size);

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
