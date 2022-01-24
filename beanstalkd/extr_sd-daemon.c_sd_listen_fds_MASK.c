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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int EINVAL ; 
 int FD_CLOEXEC ; 
 int /*<<< orphan*/  F_GETFD ; 
 int /*<<< orphan*/  F_SETFD ; 
 int SD_LISTEN_FDS_START ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int FUNC1 (int,int /*<<< orphan*/ ,...) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 () ; 
 unsigned long FUNC4 (char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int FUNC6(int unset_environment) {

#if defined(DISABLE_SYSTEMD) || !defined(__linux__)
        UNUSED_PARAMETER(unset_environment);
        return 0;
#else
        int r, fd;
        const char *e;
        char *p = NULL;
        unsigned long l;

        if (!(e = FUNC2("LISTEN_PID"))) {
                r = 0;
                goto finish;
        }

        errno = 0;
        l = FUNC4(e, &p, 10);

        if (errno != 0) {
                r = -errno;
                goto finish;
        }

        if (!p || *p || l <= 0) {
                r = -EINVAL;
                goto finish;
        }

        /* Is this for us? */
        if (FUNC3() != (pid_t) l) {
                r = 0;
                goto finish;
        }

        if (!(e = FUNC2("LISTEN_FDS"))) {
                r = 0;
                goto finish;
        }

        errno = 0;
        l = FUNC4(e, &p, 10);

        if (errno != 0) {
                r = -errno;
                goto finish;
        }

        if (!p || *p) {
                r = -EINVAL;
                goto finish;
        }

        for (fd = SD_LISTEN_FDS_START; fd < SD_LISTEN_FDS_START + (int) l; fd ++) {
                int flags;

                if ((flags = FUNC1(fd, F_GETFD)) < 0) {
                        r = -errno;
                        goto finish;
                }

                if (flags & FD_CLOEXEC)
                        continue;

                if (FUNC1(fd, F_SETFD, flags | FD_CLOEXEC) < 0) {
                        r = -errno;
                        goto finish;
                }
        }

        r = (int) l;

finish:
        if (unset_environment) {
                FUNC5("LISTEN_PID");
                FUNC5("LISTEN_FDS");
        }

        return r;
#endif
}