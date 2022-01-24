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
struct TYPE_3__ {int max; int /*<<< orphan*/ * lp; int /*<<< orphan*/ * bp; int /*<<< orphan*/ * tp; } ;
typedef  TYPE_1__ Tokenrow ;
typedef  int /*<<< orphan*/  Token ;

/* Variables and functions */
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 

Token *
FUNC2(Tokenrow *trp)
{
	int ncur = trp->tp - trp->bp;
	int nlast = trp->lp - trp->bp;

	trp->max = 3*trp->max/2 + 1;
	trp->bp = (Token *)FUNC1(trp->bp, trp->max*sizeof(Token));
	if (trp->bp == NULL)
		FUNC0(FATAL, "Out of memory from realloc");
	trp->lp = &trp->bp[nlast];
	trp->tp = &trp->bp[ncur];
	return trp->lp;
}