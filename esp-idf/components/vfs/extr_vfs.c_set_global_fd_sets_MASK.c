#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  errorfds; int /*<<< orphan*/  writefds; int /*<<< orphan*/  readfds; scalar_t__ isset; } ;
typedef  TYPE_1__ fds_triple_t ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_5__ {int local_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int MAX_FDS ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC2 (int const,int /*<<< orphan*/ *) ; 
 TYPE_3__* s_fd_table ; 

__attribute__((used)) static int FUNC3(const fds_triple_t *vfs_fds_triple, int size, fd_set *readfds, fd_set *writefds, fd_set *errorfds)
{
    int ret = 0;

    for (int i = 0; i < size; ++i) {
        const fds_triple_t *item = &vfs_fds_triple[i];
        if (item->isset) {
            for (int fd = 0; fd < MAX_FDS; ++fd) {
                const int local_fd = s_fd_table[fd].local_fd; // single read -> no locking is required
                if (readfds && FUNC2(local_fd, &item->readfds)) {
                    FUNC0(TAG, "FD %d in readfds was set from VFS ID %d", fd, i);
                    FUNC1(fd, readfds);
                    ++ret;
                }
                if (writefds && FUNC2(local_fd, &item->writefds)) {
                    FUNC0(TAG, "FD %d in writefds was set from VFS ID %d", fd, i);
                    FUNC1(fd, writefds);
                    ++ret;
                }
                if (errorfds && FUNC2(local_fd, &item->errorfds)) {
                    FUNC0(TAG, "FD %d in errorfds was set from VFS ID %d", fd, i);
                    FUNC1(fd, errorfds);
                    ++ret;
                }
            }
        }
    }

    return ret;
}