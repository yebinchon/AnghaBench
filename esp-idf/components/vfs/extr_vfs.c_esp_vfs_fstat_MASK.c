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
struct stat {int dummy; } ;
struct _reent {int dummy; } ;
typedef  int /*<<< orphan*/  __errno_r ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct _reent*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int const,struct stat*) ; 
 int /*<<< orphan*/  EBADF ; 
 int /*<<< orphan*/  fstat ; 
 int FUNC1 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 

int FUNC3(struct _reent *r, int fd, struct stat * st)
{
    const vfs_entry_t* vfs = FUNC2(fd);
    const int local_fd = FUNC1(vfs, fd);
    if (vfs == NULL || local_fd < 0) {
        __errno_r(r) = EBADF;
        return -1;
    }
    int ret;
    FUNC0(ret, r, vfs, fstat, local_fd, st);
    return ret;
}