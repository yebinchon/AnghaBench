#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_3__ {scalar_t__ c_cc; } ;
struct tty {int t_lflag; scalar_t__ t_rocount; int t_iflag; int t_column; int t_state; int t_rocol; int* t_cc; TYPE_1__ t_rawq; } ;

/* Variables and functions */
#define  BACKSPACE 134 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
#define  CONTROL 133 
 int /*<<< orphan*/  ECHO ; 
 int /*<<< orphan*/  ECHOCTL ; 
 int /*<<< orphan*/  ECHOE ; 
 int /*<<< orphan*/  ECHOPRT ; 
 int /*<<< orphan*/  EXTPROC ; 
 int /*<<< orphan*/  FLUSHO ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IUTF8 ; 
#define  NEWLINE 132 
#define  ORDINARY 131 
 char* PANICSTR ; 
#define  RETURN 130 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
#define  TAB 129 
 int /*<<< orphan*/  TS_CNTTB ; 
 int /*<<< orphan*/  TS_ERASE ; 
 int /*<<< orphan*/  TTY_CHARMASK ; 
 int /*<<< orphan*/  FUNC5 (struct tty*) ; 
 char TTY_QUOTE ; 
 size_t VERASE ; 
#define  VTAB 128 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,struct tty*) ; 
 int /*<<< orphan*/  FUNC11 (char,struct tty*) ; 
 int /*<<< orphan*/  FUNC12 (struct tty*) ; 
 int /*<<< orphan*/  FUNC13 (struct tty*,int) ; 

__attribute__((used)) static void
FUNC14(int c, struct tty *tp)
{
	u_char *cp;
	int savecol;
	int tabc;

	FUNC5(tp);	/* debug assert */

	if (!FUNC3(tp->t_lflag, ECHO) || FUNC3(tp->t_lflag, EXTPROC))
		return;
	FUNC2(tp->t_lflag, FLUSHO);
	if (FUNC3(tp->t_lflag, ECHOE)) {
		if (tp->t_rocount == 0) {
			/*
			 * Messed up by ttwrite; retype
			 */
			FUNC12(tp);
			return;
		}
		if (c == ('\t' | TTY_QUOTE) || c == ('\n' | TTY_QUOTE))
			FUNC13(tp, 2);
		else {
			FUNC2(c, ~TTY_CHARMASK);
			switch (FUNC0(c)) {
			case ORDINARY:
				if(!(FUNC3(tp->t_iflag, IUTF8) && FUNC1(c))) {
					FUNC13(tp, 1);
				}
				break;
			case BACKSPACE:
			case CONTROL:
			case NEWLINE:
			case RETURN:
			case VTAB:
				if (FUNC3(tp->t_lflag, ECHOCTL))
					FUNC13(tp, 2);
				break;
			case TAB:
				if (tp->t_rocount < tp->t_rawq.c_cc) {
					FUNC12(tp);
					return;
				}
				savecol = tp->t_column;
				FUNC4(tp->t_state, TS_CNTTB);
				FUNC4(tp->t_lflag, FLUSHO);
				tp->t_column = tp->t_rocol;
				for (cp = FUNC6(&tp->t_rawq, &tabc); cp;
				    cp = FUNC7(&tp->t_rawq, cp, &tabc))
					FUNC10(tabc, tp);
				FUNC2(tp->t_lflag, FLUSHO);
				FUNC2(tp->t_state, TS_CNTTB);

				/* savecol will now be length of the tab. */
				savecol -= tp->t_column;
				tp->t_column += savecol;
				if (savecol > 8)
					savecol = 8;	/* overflow fixup */
				while (--savecol >= 0)
					(void)FUNC11('\b', tp);
				break;
			default:			/* XXX */
#define	PANICSTR	"ttyrub: would panic c = %d, val = %d\n"
				FUNC9(PANICSTR, c, FUNC0(c));
#ifdef notdef
				panic(PANICSTR, c, CCLASS(c));
#endif
			}
		}
	} else if (FUNC3(tp->t_lflag, ECHOPRT)) {
		if (!FUNC3(tp->t_state, TS_ERASE)) {
			FUNC4(tp->t_state, TS_ERASE);
			(void)FUNC11('\\', tp);
		}
		FUNC10(c, tp);
	} else
		FUNC10(tp->t_cc[VERASE], tp);
	--tp->t_rocount;
}