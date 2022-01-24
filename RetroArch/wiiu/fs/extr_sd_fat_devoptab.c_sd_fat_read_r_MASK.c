#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct _reent {int _errno; } ;
typedef  size_t ssize_t ;
struct TYPE_4__ {int pos; TYPE_1__* dev; int /*<<< orphan*/  fd; int /*<<< orphan*/  read; } ;
typedef  TYPE_2__ sd_fat_file_state_t ;
struct TYPE_3__ {int /*<<< orphan*/  pMutex; int /*<<< orphan*/  pCmd; int /*<<< orphan*/  pClient; } ;

/* Variables and functions */
 int EACCES ; 
 int ENODEV ; 
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 size_t FUNC1 (size_t) ; 
 int /*<<< orphan*/  FS_ALIGNMENT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned char*,size_t) ; 

__attribute__((used)) static ssize_t FUNC7 (struct _reent *r, void* fd, char *ptr, size_t len)
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

    FUNC2(file->dev->pMutex);

    size_t len_aligned = FUNC1(len);
    if(len_aligned > 0x4000)
        len_aligned = 0x4000;

    unsigned char *tmpBuf = (unsigned char *)FUNC5(FS_ALIGNMENT, len_aligned);
    if(!tmpBuf) {
        r->_errno = ENOMEM;
        FUNC3(file->dev->pMutex);
        return 0;
    }

    size_t done = 0;

    while(done < len)
    {
        size_t read_size = (len_aligned < (len - done)) ? len_aligned : (len - done);

        int result = FUNC0(file->dev->pClient, file->dev->pCmd, tmpBuf, 0x01, read_size, file->fd, 0, -1);
        if(result < 0)
        {
            r->_errno = result;
            done = 0;
            break;
        }
        else if(result == 0)
        {
            /*! TODO: error on read_size > 0 */
            break;
        }
        else
        {
            FUNC6(ptr + done, tmpBuf, read_size);
            done += result;
            file->pos += result;
        }
    }

    FUNC4(tmpBuf);
    FUNC3(file->dev->pMutex);
    return done;
}