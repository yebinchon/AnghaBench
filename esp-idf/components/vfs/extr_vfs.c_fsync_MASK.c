#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_entry_t ;
struct _reent {int dummy; } ;
typedef  int /*<<< orphan*/  __errno_r ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct _reent*,int /*<<< orphan*/  const*,int (*) (int),int const) ; 
 int /*<<< orphan*/  EBADF ; 
 struct _reent* FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 

int FUNC4(int fd)
{
    const vfs_entry_t* vfs = FUNC3(fd);
    const int local_fd = FUNC2(vfs, fd);
    struct _reent* r = FUNC1();
    if (vfs == NULL || local_fd < 0) {
        __errno_r(r) = EBADF;
        return -1;
    }
    int ret;
    FUNC0(ret, r, vfs, fsync, local_fd);
    return ret;
}