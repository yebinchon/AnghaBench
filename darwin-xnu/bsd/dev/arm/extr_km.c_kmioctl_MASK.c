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
typedef  int u_long ;
struct winsize {int dummy; } ;
struct user_termios {int /*<<< orphan*/  c_cflag; } ;
struct tty {size_t t_line; struct winsize t_winsize; } ;
struct termios32 {int /*<<< orphan*/  c_cflag; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  int /*<<< orphan*/  dev_t ;
typedef  scalar_t__ caddr_t ;
struct TYPE_2__ {int (* l_ioctl ) (struct tty*,int,scalar_t__,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCAL ; 
 int EINVAL ; 
 int ENOTTY ; 
#define  KMIOCSIZE 135 
#define  TIOCSETAF_32 134 
#define  TIOCSETAF_64 133 
#define  TIOCSETAW_32 132 
#define  TIOCSETAW_64 131 
#define  TIOCSETA_32 130 
#define  TIOCSETA_64 129 
#define  TIOCSWINSZ 128 
 struct tty** km_tty ; 
 TYPE_1__* linesw ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tty*,int,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct tty*,int,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*) ; 

int
FUNC5(dev_t dev, u_long cmd, caddr_t data, int flag, proc_t p)
{
	int             error = 0;
	struct tty *tp = km_tty[FUNC0(dev)];
	struct winsize *wp;

	FUNC3(tp);

	switch (cmd) {
	case KMIOCSIZE:
		wp = (struct winsize *) data;
		*wp = tp->t_winsize;
		break;

	case TIOCSWINSZ:
		/*
		 * Prevent changing of console size -- this ensures that
		 * login doesn't revert to the termcap-defined size
		 */
		error = EINVAL;
		break;

		/* Bodge in the CLOCAL flag as the km device is always local */
	case TIOCSETA_32:
	case TIOCSETAW_32:
	case TIOCSETAF_32:
		{
			struct termios32 *t = (struct termios32 *)data;
			t->c_cflag |= CLOCAL;
			/* No Break */
		}
		goto fallthrough;
	case TIOCSETA_64:
	case TIOCSETAW_64:
	case TIOCSETAF_64:
		{
			struct user_termios *t = (struct user_termios *)data;
			t->c_cflag |= CLOCAL;
			/* No Break */
		}
fallthrough:
	default:
		error = (*linesw[tp->t_line].l_ioctl) (tp, cmd, data, flag, p);
		if (ENOTTY != error)
			break;
		error = FUNC2(tp, cmd, data, flag, p);
		break;
	}

	FUNC4(tp);

	return (error);
}