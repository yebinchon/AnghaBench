
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct _reent {int _errno; } ;
struct TYPE_4__ {TYPE_1__* dev; int fd; } ;
typedef TYPE_2__ sd_fat_file_state_t ;
typedef int off_t ;
struct TYPE_3__ {int pMutex; int pCmd; int pClient; } ;


 int ENODEV ;
 int FSTruncateFile (int ,int ,int ,int) ;
 int OSLockMutex (int ) ;
 int OSUnlockMutex (int ) ;

__attribute__((used)) static int sd_fat_ftruncate_r (struct _reent *r, void* fd, off_t len)
{
    sd_fat_file_state_t *file = (sd_fat_file_state_t *)fd;
    if(!file->dev) {
        r->_errno = ENODEV;
        return -1;
    }

    OSLockMutex(file->dev->pMutex);

    int result = FSTruncateFile(file->dev->pClient, file->dev->pCmd, file->fd, -1);

    OSUnlockMutex(file->dev->pMutex);

    if(result < 0) {
        r->_errno = result;
        return -1;
    }

    return 0;
}
