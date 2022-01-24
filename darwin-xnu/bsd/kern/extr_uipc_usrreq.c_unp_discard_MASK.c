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
struct fileproc {int dummy; } ;
struct fileglob {int fg_lflags; } ;

/* Variables and functions */
 int FG_RMMSGQ ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct fileproc*,struct fileglob*,void*) ; 
 void* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct fileglob*) ; 
 scalar_t__ FUNC5 (struct fileglob*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  unp_disposed ; 
 int /*<<< orphan*/  unp_rights ; 

__attribute__((used)) static void
FUNC8(struct fileglob *fg, void *p)
{
	if (p == NULL)
		p = FUNC3();		/* XXX */

	(void) FUNC0(1, &unp_disposed);
	if (FUNC5(fg)) {
		FUNC1(fg->fg_lflags & FG_RMMSGQ);
		FUNC4(fg);
	}
	(void) FUNC0(-1, &unp_rights);

	FUNC6(p);
	(void) FUNC2((struct fileproc *)0, fg, p);
	FUNC7(p);
}