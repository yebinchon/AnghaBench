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
struct rawcb {scalar_t__ rcb_faddr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  FUNC0 (struct rawcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*) ; 
 struct rawcb* FUNC2 (struct socket*) ; 

__attribute__((used)) static int
FUNC3(struct socket *so)
{
	struct rawcb *rp = FUNC2(so);

	if (rp == 0)
		return EINVAL;
	if (rp->rcb_faddr == 0) {
		return ENOTCONN;
	}
	FUNC0(rp);
	FUNC1(so);
	return 0;
}