#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ c_cc; } ;
struct tty {size_t t_line; int /*<<< orphan*/  t_state; TYPE_1__ t_outq; int /*<<< orphan*/  t_dev; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_5__ {int /*<<< orphan*/  (* l_start ) (struct tty*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  TS_BUSY ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  kmtimeout ; 
 TYPE_3__* linesw ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct tty*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int 
FUNC7(struct tty *tp)
{
	unsigned char 	buf[80];	/* buffer; limits output per call */
	unsigned char	*cp;
	int 		cc = -1;


	/* While there is data available to be output... */
	while (tp->t_outq.c_cc > 0) {
		cc = FUNC3(&tp->t_outq, 0);
		if (cc == 0)
			break;
		/*
		 * attempt to output as many characters as are available,
		 * up to the available transfer buffer size.
		 */
		cc = FUNC2(cc, sizeof(buf));
		/* copy the output queue contents to the buffer */
		(void) FUNC4(&tp->t_outq, buf, cc);
		for (cp = buf; cp < &buf[cc]; cp++) {
			/* output the buffer one charatcer at a time */
			*cp = *cp & 0x7f;
		}

		if (cc > 1) {
			FUNC0((char *)buf, cc);
		} else {
			FUNC1(tp->t_dev, *buf);
		}
	}
	/*
	 * XXX This is likely not necessary, as the tty output queue is not
	 * XXX writeable while we hold the tty_lock().
	 */
        if (tp->t_outq.c_cc > 0) {
		FUNC6(kmtimeout, tp, hz);
	}
	tp->t_state &= ~TS_BUSY;
	/* Start the output processing for the line discipline */
	(*linesw[tp->t_line].l_start)(tp);

	return 0;
}