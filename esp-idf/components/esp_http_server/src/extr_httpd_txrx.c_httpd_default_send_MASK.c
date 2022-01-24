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
typedef  int /*<<< orphan*/  httpd_handle_t ;

/* Variables and functions */
 int HTTPD_SOCK_ERR_INVALID ; 
 int FUNC0 (char*,int) ; 
 int FUNC1 (int,char const*,size_t,int) ; 

int FUNC2(httpd_handle_t hd, int sockfd, const char *buf, size_t buf_len, int flags)
{
    (void)hd;
    if (buf == NULL) {
        return HTTPD_SOCK_ERR_INVALID;
    }

    int ret = FUNC1(sockfd, buf, buf_len, flags);
    if (ret < 0) {
        return FUNC0("send", sockfd);
    }
    return ret;
}