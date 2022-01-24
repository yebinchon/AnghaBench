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
struct socket {int /*<<< orphan*/  so_flags; scalar_t__ so_pcb; } ;
struct rawcb {struct socket* rcb_socket; scalar_t__ rcb_laddr; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rawcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_PCB ; 
 int /*<<< orphan*/  SOF_PCBCLEARING ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  raw_mtx ; 
 int /*<<< orphan*/  FUNC7 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*) ; 

void
FUNC10(struct rawcb *rp)
{
	struct socket *so = rp->rcb_socket;

	so->so_pcb = 0;
	so->so_flags |= SOF_PCBCLEARING;
	FUNC9(so);
	if (!FUNC4(raw_mtx)) {
		FUNC8(so, 0);
		FUNC3(raw_mtx);
		FUNC7(so, 0);
	}
	FUNC1(rp, list);
	FUNC5(raw_mtx);
#ifdef notdef
	if (rp->rcb_laddr)
		m_freem(dtom(rp->rcb_laddr));
	rp->rcb_laddr = 0;
#endif
	rp->rcb_socket = NULL;
	FUNC0((caddr_t)(rp), M_PCB);
}