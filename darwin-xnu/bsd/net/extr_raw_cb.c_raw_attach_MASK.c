#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct socket {int dummy; } ;
struct TYPE_2__ {int sp_protocol; int /*<<< orphan*/  sp_family; } ;
struct rawcb {TYPE_1__ rcb_proto; struct socket* rcb_socket; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct rawcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  raw_mtx ; 
 int /*<<< orphan*/  raw_recvspace ; 
 int /*<<< orphan*/  raw_sendspace ; 
 int /*<<< orphan*/  rawcb_list ; 
 int FUNC4 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rawcb* FUNC5 (struct socket*) ; 

int
FUNC6(struct socket *so, int proto)
{
	struct rawcb *rp = FUNC5(so);
	int error;

	/*
	 * It is assumed that raw_attach is called
	 * after space has been allocated for the
	 * rawcb.
	 */
	if (rp == 0)
		return (ENOBUFS);
	error = FUNC4(so, raw_sendspace, raw_recvspace);
	if (error)
		return (error);
	rp->rcb_socket = so;
	rp->rcb_proto.sp_family = FUNC1(so);
	rp->rcb_proto.sp_protocol = proto;
	FUNC2(raw_mtx);
	FUNC0(&rawcb_list, rp, list);
	FUNC3(raw_mtx);
	return (0);
}