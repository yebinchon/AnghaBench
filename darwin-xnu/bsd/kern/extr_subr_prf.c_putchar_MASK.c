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
struct putchar_args {int flags; int /*<<< orphan*/ * tty; } ;

/* Variables and functions */
 int TOCONS ; 
 int TOLOG ; 
 int TOLOGLOCKED ; 
 int TOSTR ; 
 int TOTTY ; 
 int /*<<< orphan*/ * constty ; 
 scalar_t__ debugger_panic_str ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  msgbufp ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void
FUNC5(int c, void *arg)
{
	struct putchar_args *pca = arg;
	char **sp = (char**) pca->tty;

	if (debugger_panic_str)
		constty = 0;
	if ((pca->flags & TOCONS) && pca->tty == NULL && constty) {
		pca->tty = constty;
		pca->flags |= TOTTY;
	}
	if ((pca->flags & TOTTY) && pca->tty && FUNC3(c, pca->tty) < 0 &&
	    (pca->flags & TOCONS) && pca->tty == constty)
		constty = 0;
	if ((pca->flags & TOLOG) && c != '\0' && c != '\r' && c != 0177)
		FUNC0(c);
	if ((pca->flags & TOLOGLOCKED) && c != '\0' && c != '\r' && c != 0177)
		FUNC1(msgbufp, c);
	if ((pca->flags & TOCONS) && constty == 0 && c != '\0')
		FUNC4)(c);
	if (pca->flags & TOSTR) {
		**sp = c;
		(*sp)++;
	}
}