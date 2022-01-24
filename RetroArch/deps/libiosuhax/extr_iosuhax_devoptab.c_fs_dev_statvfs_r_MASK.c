#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct statvfs {int f_bsize; int f_frsize; int f_blocks; int f_bfree; int f_bavail; int f_files; int f_ffree; int f_fsid; int f_namemax; scalar_t__ f_flag; } ;
struct _reent {int _errno; } ;
struct TYPE_4__ {int /*<<< orphan*/  pMutex; int /*<<< orphan*/  fsaFd; } ;
typedef  TYPE_1__ fs_dev_private_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__* FUNC4 (char const*) ; 
 char* FUNC5 (char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct statvfs*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7 (struct _reent *r, const char *path, struct statvfs *buf)
{
    fs_dev_private_t *dev = FUNC4(path);

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

    FUNC1(dev->pMutex);

    // Zero out the stat buffer
    FUNC6(buf, 0, sizeof(struct statvfs));

    char *real_path = FUNC5(path, dev);
    if(!real_path) {
        r->_errno = ENOMEM;
        FUNC2(dev->pMutex);
        return -1;
    }

    uint64_t size;

    int result = FUNC0(dev->fsaFd, real_path, 0x00, (uint32_t*)&size);

    FUNC3(real_path);

    if(result < 0) {
        r->_errno = result;
        FUNC2(dev->pMutex);
        return -1;
    }

    // File system block size
    buf->f_bsize = 512;

    // Fundamental file system block size
    buf->f_frsize = 512;

    // Total number of blocks on file system in units of f_frsize
    buf->f_blocks = size >> 9; // this is unknown

    // Free blocks available for all and for non-privileged processes
    buf->f_bfree = buf->f_bavail = size >> 9;

    // Number of inodes at this point in time
    buf->f_files = 0xffffffff;

    // Free inodes available for all and for non-privileged processes
    buf->f_ffree = 0xffffffff;

    // File system id
    buf->f_fsid = (int)dev;

    // Bit mask of f_flag values.
    buf->f_flag = 0;

    // Maximum length of filenames
    buf->f_namemax = 255;

    FUNC2(dev->pMutex);

    return 0;
}