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
struct socket {int /*<<< orphan*/  so_label; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  socket_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr*) ; 
 int /*<<< orphan*/  mac_socket_enforce ; 
 int /*<<< orphan*/  socket_check_connect ; 

int
FUNC1(kauth_cred_t cred, struct socket *so,
    struct sockaddr *sockaddr)
{
	int error;

#if SECURITY_MAC_CHECK_ENFORCE
    /* 21167099 - only check if we allow write */
    if (!mac_socket_enforce)
        return 0;
#endif

	FUNC0(socket_check_connect, cred,
		  (socket_t)so, so->so_label,
		  sockaddr);
	return (error);
}