#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* tp; TYPE_2__* bp; TYPE_2__* lp; } ;
typedef  TYPE_1__ Tokenrow ;
struct TYPE_5__ {int* t; size_t len; int /*<<< orphan*/  type; int /*<<< orphan*/  hideset; } ;
typedef  TYPE_2__ Token ;

/* Variables and functions */
 int /*<<< orphan*/  NAME ; 
 int /*<<< orphan*/  NL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC4(Tokenrow *trp, char *str)
{
	Token *tp;

	tp = trp->tp;
	FUNC1();
	if (str)
		FUNC2(stderr, "%s ", str);
	if (tp<trp->bp || tp>trp->lp)
		FUNC2(stderr, "(tp offset %ld) ", tp-trp->bp);
	for (tp=trp->bp; tp<trp->lp && tp<trp->bp+32; tp++) {
		if (tp->type!=NL) {
			int c = tp->t[tp->len];
			tp->t[tp->len] = 0;
			FUNC2(stderr, "%s", tp->t);
			tp->t[tp->len] = c;
		}
		if (tp->type==NAME) {
			FUNC2(stderr, tp==trp->tp?"{*":"{");
			FUNC3(tp->hideset);
			FUNC2(stderr, "} ");
		} else
			FUNC2(stderr, tp==trp->tp?"{%x*} ":"{%x} ", tp->type);
	}
	FUNC2(stderr, "\n");
	FUNC0(stderr);
}