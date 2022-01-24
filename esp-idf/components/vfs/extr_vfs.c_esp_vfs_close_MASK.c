#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_entry_t ;
struct _reent {int dummy; } ;
typedef  int /*<<< orphan*/  __errno_r ;
struct TYPE_3__ {int /*<<< orphan*/  permanent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct _reent*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  EBADF ; 
 TYPE_1__ FD_TABLE_ENTRY_UNUSED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  close ; 
 int FUNC3 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 TYPE_1__* s_fd_table ; 
 int /*<<< orphan*/  s_fd_table_lock ; 

int FUNC5(struct _reent *r, int fd)
{
    const vfs_entry_t* vfs = FUNC4(fd);
    const int local_fd = FUNC3(vfs, fd);
    if (vfs == NULL || local_fd < 0) {
        __errno_r(r) = EBADF;
        return -1;
    }
    int ret;
    FUNC0(ret, r, vfs, close, local_fd);

    FUNC1(&s_fd_table_lock);
    if (!s_fd_table[fd].permanent) {
        s_fd_table[fd] = FD_TABLE_ENTRY_UNUSED;
    }
    FUNC2(&s_fd_table_lock);
    return ret;
}