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

/* Variables and functions */
#define  EAGAIN 133 
#define  EBADF 132 
#define  EFAULT 131 
#define  EINTR 130 
#define  EINVAL 129 
#define  ENOTSOCK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 
 int HTTPD_SOCK_ERR_FAIL ; 
 int HTTPD_SOCK_ERR_INVALID ; 
 int HTTPD_SOCK_ERR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  TAG ; 
 int errno ; 

__attribute__((used)) static int FUNC2(const char *ctx, int sockfd)
{
    int errval;
    FUNC0(TAG, FUNC1("error in %s : %d"), ctx, errno);

    switch(errno) {
    case EAGAIN:
    case EINTR:
        errval = HTTPD_SOCK_ERR_TIMEOUT;
        break;
    case EINVAL:
    case EBADF:
    case EFAULT:
    case ENOTSOCK:
        errval = HTTPD_SOCK_ERR_INVALID;
        break;
    default:
        errval = HTTPD_SOCK_ERR_FAIL;
    }
    return errval;
}