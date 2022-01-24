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
struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct rawcb {scalar_t__ rcb_laddr; } ;

/* Variables and functions */
 int EINVAL ; 
 struct sockaddr* FUNC0 (scalar_t__,int) ; 
 struct rawcb* FUNC1 (struct socket*) ; 

__attribute__((used)) static int
FUNC2(struct socket *so, struct sockaddr **nam)
{
	struct rawcb *rp = FUNC1(so);

	if (rp == 0)
		return EINVAL;
	if (rp->rcb_laddr == 0)
		return EINVAL;
	*nam = FUNC0(rp->rcb_laddr, 1);
	return 0;
}