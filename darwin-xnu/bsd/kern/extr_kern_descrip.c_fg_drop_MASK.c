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
struct fileproc {struct fileglob* f_fglob; } ;
struct fileglob {int /*<<< orphan*/  fg_lock; int /*<<< orphan*/  fg_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct fileproc * fp)
{
	struct fileglob *fg;

	fg = fp->f_fglob;
	FUNC0(&fg->fg_lock);
	fg->fg_count--;
	FUNC1(&fg->fg_lock);
}