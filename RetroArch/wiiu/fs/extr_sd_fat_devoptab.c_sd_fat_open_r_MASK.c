#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct _reent {int _errno; } ;
struct TYPE_7__ {int /*<<< orphan*/  pMutex; int /*<<< orphan*/  pCmd; int /*<<< orphan*/  pClient; } ;
typedef  TYPE_1__ sd_fat_private_t ;
struct TYPE_8__ {int flags; int read; int write; int append; int fd; int /*<<< orphan*/  len; scalar_t__ pos; TYPE_1__* dev; } ;
typedef  TYPE_2__ sd_fat_file_state_t ;
struct TYPE_9__ {int /*<<< orphan*/  size; } ;
typedef  TYPE_3__ FSStat ;
typedef  int /*<<< orphan*/  FSFileHandle ;

/* Variables and functions */
 int EACCES ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_3__*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int O_APPEND ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_1__* FUNC6 (char const*) ; 
 char* FUNC7 (char const*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC8 (struct _reent *r, void *fileStruct, const char *path, int flags, int mode)
{
    sd_fat_private_t *dev = FUNC6(path);
    if(!dev) {
        r->_errno = ENODEV;
        return -1;
    }

    sd_fat_file_state_t *file = (sd_fat_file_state_t *)fileStruct;

    file->dev = dev;
    /* Determine which mode the file is opened for */
    file->flags = flags;

    const char *mode_str;

    if ((flags & 0x03) == O_RDONLY) {
        file->read = true;
        file->write = false;
        file->append = false;
        mode_str = "r";
    } else if ((flags & 0x03) == O_WRONLY) {
        file->read = false;
        file->write = true;
        file->append = (flags & O_APPEND);
        mode_str = file->append ? "a" : "w";
    } else if ((flags & 0x03) == O_RDWR) {
        file->read = true;
        file->write = true;
        file->append = (flags & O_APPEND);
        mode_str = file->append ? "a+" : "r+";
    } else {
        r->_errno = EACCES;
        return -1;
    }

    int fd = -1;

    FUNC3(dev->pMutex);

    char *real_path = FUNC7(path, dev);
    if(!path) {
        r->_errno = ENOMEM;
        FUNC4(dev->pMutex);
        return -1;
    }

    int result = FUNC2(dev->pClient, dev->pCmd, real_path, mode_str, (FSFileHandle*)&fd, -1);

    FUNC5(real_path);

    if(result == 0)
    {
        FSStat stats;
        result = FUNC1(dev->pClient, dev->pCmd, fd, &stats, -1);
        if(result != 0) {
            FUNC0(dev->pClient, dev->pCmd, fd, -1);
            r->_errno = result;
            FUNC4(dev->pMutex);
            return -1;
        }
        file->fd = fd;
        file->pos = 0;
        file->len = stats.size;
        FUNC4(dev->pMutex);
        return (int)file;
    }

    r->_errno = result;
    FUNC4(dev->pMutex);
    return -1;
}