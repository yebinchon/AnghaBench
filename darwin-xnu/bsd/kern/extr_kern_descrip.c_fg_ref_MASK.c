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
struct fileproc {unsigned int f_flags; struct fileglob* f_fglob; } ;
struct fileglob {scalar_t__ fg_count; int /*<<< orphan*/  fg_lock; } ;

/* Variables and functions */
 scalar_t__ FP_VALID_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct fileproc*,...) ; 

void
FUNC3(struct fileproc * fp)
{
	struct fileglob *fg;

	fg = fp->f_fglob;

	FUNC0(&fg->fg_lock);

#if DIAGNOSTIC
	if ((fp->f_flags & ~((unsigned int)FP_VALID_FLAGS)) != 0)
		panic("fg_ref: invalid bits on fp %p", fp);

	if (fg->fg_count == 0)
		panic("fg_ref: adding fgcount to zeroed fg: fp %p fg %p",
		    fp, fg);
#endif
	fg->fg_count++;
	FUNC1(&fg->fg_lock);
}