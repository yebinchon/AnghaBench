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
struct sock_db {void* transport_ctx; } ;
typedef  int /*<<< orphan*/  httpd_handle_t ;

/* Variables and functions */
 struct sock_db* FUNC0 (int /*<<< orphan*/ ,int) ; 

void *FUNC1(httpd_handle_t handle, int sockfd)
{
    struct sock_db *sd = FUNC0(handle, sockfd);
    if (sd == NULL) {
        return NULL;
    }

    return sd->transport_ctx;
}