
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct _reent {int _errno; } ;
struct TYPE_7__ {int pMutex; int fsaFd; } ;
typedef TYPE_1__ fs_dev_private_t ;
struct TYPE_8__ {int flags; int read; int write; int append; int fd; int len; scalar_t__ pos; TYPE_1__* dev; } ;
typedef TYPE_2__ fs_dev_file_state_t ;
struct TYPE_9__ {int size; } ;
typedef TYPE_3__ fileStat_s ;


 int EACCES ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int IOSUHAX_FSA_CloseFile (int ,int) ;
 int IOSUHAX_FSA_OpenFile (int ,char*,char const*,int*) ;
 int IOSUHAX_FSA_StatFile (int ,int,TYPE_3__*) ;
 int OSLockMutex (int ) ;
 int OSUnlockMutex (int ) ;
 int O_APPEND ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_WRONLY ;
 int free (char*) ;
 TYPE_1__* fs_dev_get_device_data (char const*) ;
 char* fs_dev_real_path (char const*,TYPE_1__*) ;

__attribute__((used)) static int fs_dev_open_r (struct _reent *r, void *fileStruct, const char *path, int flags, int mode)
{
    fs_dev_private_t *dev = fs_dev_get_device_data(path);

    if(!r)
        return -1;

    if(!dev) {
        r->_errno = ENODEV;
        return -1;
    }

    fs_dev_file_state_t *file = (fs_dev_file_state_t *)fileStruct;
    if(!file) {
       r->_errno = EINVAL;
       return -1;
    }

    file->dev = dev;

    file->flags = flags;

    const char *mode_str;

    if ((flags & 0x03) == O_RDONLY) {
        file->read = 1;
        file->write = 0;
        file->append = 0;
        mode_str = "r";
    } else if ((flags & 0x03) == O_WRONLY) {
        file->read = 0;
        file->write = 1;
        file->append = (flags & O_APPEND);
        mode_str = file->append ? "a" : "w";
    } else if ((flags & 0x03) == O_RDWR) {
        file->read = 1;
        file->write = 1;
        file->append = (flags & O_APPEND);
        mode_str = file->append ? "a+" : "r+";
    } else {
        r->_errno = EACCES;
        return -1;
    }

    int fd = -1;

    OSLockMutex(dev->pMutex);

    char *real_path = fs_dev_real_path(path, dev);
    if(!path) {
        r->_errno = ENOMEM;
        OSUnlockMutex(dev->pMutex);
        return -1;
    }

    int result = IOSUHAX_FSA_OpenFile(dev->fsaFd, real_path, mode_str, &fd);

    free(real_path);

    if(result == 0)
    {
        fileStat_s stats;
        result = IOSUHAX_FSA_StatFile(dev->fsaFd, fd, &stats);
        if(result != 0) {
            IOSUHAX_FSA_CloseFile(dev->fsaFd, fd);
            r->_errno = result;
            OSUnlockMutex(dev->pMutex);
            return -1;
        }
        file->fd = fd;
        file->pos = 0;
        file->len = stats.size;
        OSUnlockMutex(dev->pMutex);
        return (int)file;
    }

    r->_errno = result;
    OSUnlockMutex(dev->pMutex);
    return -1;
}
