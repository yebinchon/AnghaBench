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
typedef  scalar_t__ uint32_t ;
struct socket {struct flow_divert_pcb* so_fd_pcb; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct inpcb {int dummy; } ;
struct flow_divert_pcb {int dummy; } ;
typedef  scalar_t__ mbuf_t ;
typedef  int errno_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENETDOWN ; 
 int FUNC0 (struct socket*,int,scalar_t__,struct sockaddr*,scalar_t__,struct proc*) ; 
 int FUNC1 (struct socket*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (struct inpcb*) ; 
 struct inpcb* FUNC5 (struct socket*) ; 

errno_t
FUNC6(struct socket *so, int flags, mbuf_t data, struct sockaddr *to, mbuf_t control, struct proc *p)
{
        struct flow_divert_pcb  *fd_cb  = so->so_fd_pcb;
	struct inpcb *inp;
        int error = 0;

	inp = FUNC5(so);
	if (inp == NULL) {
		return (EINVAL);
	}

        if (fd_cb == NULL) {
                uint32_t fd_ctl_unit = FUNC4(inp);
                if (fd_ctl_unit > 0) {
                        error = FUNC1(so, fd_ctl_unit);
                        fd_cb  = so->so_fd_pcb;
                        if (error != 0 || fd_cb == NULL) {
                                goto done;
                        }
                } else {
                        error = ENETDOWN;
                        goto done;
                }
        }
        return FUNC0(so, flags, data, to, control, p);

done:
        if (data) {
                FUNC3(data);
        }
        if (control) {
                FUNC2(control);
        }

        return error;
}