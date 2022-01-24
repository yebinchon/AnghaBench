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
struct stat {scalar_t__ st_dev; scalar_t__ st_ino; int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  st_path ;
typedef  int /*<<< orphan*/  st_fd ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOTDIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int errno ; 
 scalar_t__ FUNC1 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (struct stat*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (char const*,struct stat*) ; 

int FUNC4(int fd, const char *path) {
        struct stat st_fd;

        if (fd < 0)
                return -EINVAL;

        FUNC2(&st_fd, 0, sizeof(st_fd));
        if (FUNC1(fd, &st_fd) < 0)
                return -errno;

        if (!FUNC0(st_fd.st_mode))
                return 0;

        if (path) {
                struct stat st_path;

                FUNC2(&st_path, 0, sizeof(st_path));
                if (FUNC3(path, &st_path) < 0) {

                        if (errno == ENOENT || errno == ENOTDIR)
                                return 0;

                        return -errno;
                }

                return
                        st_path.st_dev == st_fd.st_dev &&
                        st_path.st_ino == st_fd.st_ino;
        }

        return 1;
}