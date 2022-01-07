
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct _reent {void* _errno; } ;
typedef int off_t ;
struct TYPE_4__ {int pos; int len; TYPE_1__* dev; int fd; } ;
typedef TYPE_2__ fs_dev_file_state_t ;
struct TYPE_3__ {int pMutex; int fsaFd; } ;


 void* EINVAL ;
 void* ENODEV ;
 int IOSUHAX_FSA_SetFilePos (int ,int ,int) ;
 int OSLockMutex (int ) ;
 int OSUnlockMutex (int ) ;




__attribute__((used)) static off_t fs_dev_seek_r (struct _reent *r, void* fd, off_t pos, int dir)
{
    fs_dev_file_state_t *file = (fs_dev_file_state_t *)fd;

    if(!r)
        return 0;

    if(!file) {
        r->_errno = EINVAL;
        return 0;
    }

    if(!file->dev) {
        r->_errno = ENODEV;
        return 0;
    }

    OSLockMutex(file->dev->pMutex);

    switch(dir)
    {
    case 128:
        file->pos = pos;
        break;
    case 130:
        file->pos += pos;
        break;
    case 129:
        file->pos = file->len + pos;
        break;
    default:
        r->_errno = EINVAL;
        return -1;
    }

    int result = IOSUHAX_FSA_SetFilePos(file->dev->fsaFd, file->fd, file->pos);

    OSUnlockMutex(file->dev->pMutex);

    if(result == 0)
    {
        return file->pos;
    }

    return result;
}
