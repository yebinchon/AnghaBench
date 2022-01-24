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
struct socket {int so_state; } ;

/* Variables and functions */
 int DBG_FNC_SOSHUTDOWN ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int EINVAL ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  SHUT_RD 130 
#define  SHUT_RDWR 129 
#define  SHUT_WR 128 
 int SS_ISCONNECTED ; 
 int SS_ISCONNECTING ; 
 int SS_ISDISCONNECTING ; 
 int /*<<< orphan*/  FUNC1 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,int) ; 
 int FUNC3 (struct socket*,int) ; 

int
FUNC4(struct socket *so, int how)
{
	int error;

	FUNC0(DBG_FNC_SOSHUTDOWN | DBG_FUNC_START, how, 0, 0, 0, 0);

	switch (how) {
	case SHUT_RD:
	case SHUT_WR:
	case SHUT_RDWR:
		FUNC1(so, 1);
		if ((so->so_state &
		    (SS_ISCONNECTED|SS_ISCONNECTING|SS_ISDISCONNECTING)) == 0) {
			error = ENOTCONN;
		} else {
			error = FUNC3(so, how);
		}
		FUNC2(so, 1);
		break;
	default:
		error = EINVAL;
		break;
	}

	FUNC0(DBG_FNC_SOSHUTDOWN | DBG_FUNC_END, how, error, 0, 0, 0);

	return (error);
}