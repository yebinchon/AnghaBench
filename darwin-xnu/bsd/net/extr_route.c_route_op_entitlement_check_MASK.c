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
typedef  scalar_t__ uid_t ;
struct socket {int dummy; } ;
typedef  int /*<<< orphan*/ * kauth_cred_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  PRIV_NET_RESTRICTED_ROUTE_NC_READ ; 
 int ROUTE_OP_READ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(struct socket *so,
    kauth_cred_t cred,
    int route_op_type,
    boolean_t allow_root)
{
	if (so != NULL) {
		if (route_op_type == ROUTE_OP_READ) {
			/*
			 * If needed we can later extend this for more
			 * granular entitlements and return a bit set of
			 * allowed accesses.
			 */
			if (FUNC2(so, PRIV_NET_RESTRICTED_ROUTE_NC_READ,
			    allow_root) == 0)
				return (0);
			else
				return (-1);
		}
	} else if (cred != NULL) {
		uid_t uid = FUNC0(cred);

		/* uid is 0 for root */
		if (uid != 0 || !allow_root) {
			if (route_op_type == ROUTE_OP_READ) {
				if (FUNC1(cred,
				    PRIV_NET_RESTRICTED_ROUTE_NC_READ, 0) == 0)
					return (0);
				else
					return (-1);
			}
		}
	}
	return (-1);
}