
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct _reent {int _errno; } ;
typedef size_t ssize_t ;
struct TYPE_4__ {int pos; TYPE_1__* dev; int fd; int read; } ;
typedef TYPE_2__ sd_fat_file_state_t ;
struct TYPE_3__ {int pMutex; int pCmd; int pClient; } ;


 int EACCES ;
 int ENODEV ;
 int ENOMEM ;
 int FSReadFile (int ,int ,unsigned char*,int,size_t,int ,int ,int) ;
 size_t FS_ALIGN (size_t) ;
 int FS_ALIGNMENT ;
 int OSLockMutex (int ) ;
 int OSUnlockMutex (int ) ;
 int free (unsigned char*) ;
 scalar_t__ memalign (int ,size_t) ;
 int memcpy (char*,unsigned char*,size_t) ;

__attribute__((used)) static ssize_t sd_fat_read_r (struct _reent *r, void* fd, char *ptr, size_t len)
{
    sd_fat_file_state_t *file = (sd_fat_file_state_t *)fd;
    if(!file->dev) {
        r->_errno = ENODEV;
        return 0;
    }

    if(!file->read)
    {
        r->_errno = EACCES;
        return 0;
    }

    OSLockMutex(file->dev->pMutex);

    size_t len_aligned = FS_ALIGN(len);
    if(len_aligned > 0x4000)
        len_aligned = 0x4000;

    unsigned char *tmpBuf = (unsigned char *)memalign(FS_ALIGNMENT, len_aligned);
    if(!tmpBuf) {
        r->_errno = ENOMEM;
        OSUnlockMutex(file->dev->pMutex);
        return 0;
    }

    size_t done = 0;

    while(done < len)
    {
        size_t read_size = (len_aligned < (len - done)) ? len_aligned : (len - done);

        int result = FSReadFile(file->dev->pClient, file->dev->pCmd, tmpBuf, 0x01, read_size, file->fd, 0, -1);
        if(result < 0)
        {
            r->_errno = result;
            done = 0;
            break;
        }
        else if(result == 0)
        {

            break;
        }
        else
        {
            memcpy(ptr + done, tmpBuf, read_size);
            done += result;
            file->pos += result;
        }
    }

    free(tmpBuf);
    OSUnlockMutex(file->dev->pMutex);
    return done;
}
