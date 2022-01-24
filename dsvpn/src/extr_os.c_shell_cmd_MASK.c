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
 int /*<<< orphan*/  ENOSPC ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char*,char**) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char const*,size_t) ; 
 scalar_t__ FUNC10 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

int FUNC11(const char *substs[][2], const char *args_str, int silent)
{
    char * args[64];
    char   cmdbuf[4096];
    pid_t  child;
    size_t args_i = 0, cmdbuf_i = 0, args_str_i, i;
    int    c, exit_status, is_space = 1;

    errno = ENOSPC;
    for (args_str_i = 0; (c = args_str[args_str_i]) != 0; args_str_i++) {
        if (FUNC5((unsigned char) c)) {
            if (!is_space) {
                if (cmdbuf_i >= sizeof cmdbuf) {
                    return -1;
                }
                cmdbuf[cmdbuf_i++] = 0;
            }
            is_space = 1;
            continue;
        }
        if (is_space) {
            if (args_i >= sizeof args / sizeof args[0]) {
                return -1;
            }
            args[args_i++] = &cmdbuf[cmdbuf_i];
        }
        is_space = 0;
        for (i = 0; substs[i][0] != NULL; i++) {
            size_t pat_len = FUNC8(substs[i][0]), sub_len;
            if (!FUNC9(substs[i][0], &args_str[args_str_i], pat_len)) {
                sub_len = FUNC8(substs[i][1]);
                if (sizeof cmdbuf - cmdbuf_i <= sub_len) {
                    return -1;
                }
                FUNC6(&cmdbuf[cmdbuf_i], substs[i][1], sub_len);
                args_str_i += pat_len - 1;
                cmdbuf_i += sub_len;
                break;
            }
        }
        if (substs[i][0] == NULL) {
            if (cmdbuf_i >= sizeof cmdbuf) {
                return -1;
            }
            cmdbuf[cmdbuf_i++] = c;
        }
    }
    if (!is_space) {
        if (cmdbuf_i >= sizeof cmdbuf) {
            return -1;
        }
        cmdbuf[cmdbuf_i++] = 0;
    }
    if (args_i >= sizeof args / sizeof args[0]) {
        return -1;
    }
    args[args_i] = NULL;
    if ((child = FUNC4()) == (pid_t) -1) {
        return -1;
    } else if (child == (pid_t) 0) {
        if (silent) {
            FUNC2(FUNC2(FUNC7("/dev/null", O_WRONLY), 2), 1);
        }
        FUNC3(args[0], args);
        FUNC1(1);
    } else if (FUNC10(child, &exit_status, 0) == (pid_t) -1 || !FUNC0(exit_status)) {
        return -1;
    }
    return 0;
}