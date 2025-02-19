
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct _reent {int _errno; } ;
struct TYPE_7__ {int pMutex; int pCmd; int pClient; } ;
typedef TYPE_1__ sd_fat_private_t ;
struct TYPE_8__ {int flags; int read; int write; int append; int fd; int len; scalar_t__ pos; TYPE_1__* dev; } ;
typedef TYPE_2__ sd_fat_file_state_t ;
struct TYPE_9__ {int size; } ;
typedef TYPE_3__ FSStat ;
typedef int FSFileHandle ;


 int EACCES ;
 int ENODEV ;
 int ENOMEM ;
 int FSCloseFile (int ,int ,int,int) ;
 int FSGetStatFile (int ,int ,int,TYPE_3__*,int) ;
 int FSOpenFile (int ,int ,char*,char const*,int *,int) ;
 int OSLockMutex (int ) ;
 int OSUnlockMutex (int ) ;
 int O_APPEND ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_WRONLY ;
 int free (char*) ;
 TYPE_1__* sd_fat_get_device_data (char const*) ;
 char* sd_fat_real_path (char const*,TYPE_1__*) ;

__attribute__((used)) static int sd_fat_open_r (struct _reent *r, void *fileStruct, const char *path, int flags, int mode)
{
    sd_fat_private_t *dev = sd_fat_get_device_data(path);
    if(!dev) {
        r->_errno = ENODEV;
        return -1;
    }

    sd_fat_file_state_t *file = (sd_fat_file_state_t *)fileStruct;

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

    char *real_path = sd_fat_real_path(path, dev);
    if(!path) {
        r->_errno = ENOMEM;
        OSUnlockMutex(dev->pMutex);
        return -1;
    }

    int result = FSOpenFile(dev->pClient, dev->pCmd, real_path, mode_str, (FSFileHandle*)&fd, -1);

    free(real_path);

    if(result == 0)
    {
        FSStat stats;
        result = FSGetStatFile(dev->pClient, dev->pCmd, fd, &stats, -1);
        if(result != 0) {
            FSCloseFile(dev->pClient, dev->pCmd, fd, -1);
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
