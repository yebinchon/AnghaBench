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
struct TYPE_2__ {scalar_t__ c_cc; } ;
struct tty {int /*<<< orphan*/  t_state; TYPE_1__ t_outq; int /*<<< orphan*/  t_timeout; int /*<<< orphan*/  (* t_oproc ) (struct tty*) ;} ;

/* Variables and functions */
 int EIO ; 
 int EWOULDBLOCK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PCATCH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  TS_BUSY ; 
 int /*<<< orphan*/  TS_CONNECTED ; 
 int /*<<< orphan*/  TS_SO_OCOMPLETE ; 
 int TTOPRI ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*) ; 
 int FUNC5 (struct tty*,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 

int
FUNC6(struct tty *tp)
{
	int error;

	FUNC3(tp);	/* debug assert */

	error = 0;
	while ((tp->t_outq.c_cc || FUNC0(tp->t_state, TS_BUSY)) &&
	       FUNC0(tp->t_state, TS_CONNECTED) && tp->t_oproc) {
		(*tp->t_oproc)(tp);
		if ((tp->t_outq.c_cc || FUNC0(tp->t_state, TS_BUSY)) &&
		    FUNC0(tp->t_state, TS_CONNECTED)) {
			FUNC1(tp->t_state, TS_SO_OCOMPLETE);
			error = FUNC5(tp, FUNC2(tp),
					 TTOPRI | PCATCH, "ttywai",
					 tp->t_timeout);
			if (error) {
				if (error == EWOULDBLOCK)
					error = EIO;
				break;
			}
		} else
			break;
	}
	if (!error && (tp->t_outq.c_cc || FUNC0(tp->t_state, TS_BUSY)))
		error = EIO;
	return (error);
}