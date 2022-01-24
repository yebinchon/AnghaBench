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
typedef  int /*<<< orphan*/  kauth_cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct socket*,int /*<<< orphan*/ ,struct sockaddr*) ; 
 int /*<<< orphan*/  mac_socket_enforce ; 
 int /*<<< orphan*/  socket_check_received ; 

int
FUNC1(kauth_cred_t cred, struct socket *so, struct sockaddr *saddr)
{
	int error;

#if SECURITY_MAC_CHECK_ENFORCE
    /* 21167099 - only check if we allow write */
    if (!mac_socket_enforce)
        return 0;
#endif
	
	FUNC0(socket_check_received, cred,
		  so, so->so_label, saddr);
	return (error);
}