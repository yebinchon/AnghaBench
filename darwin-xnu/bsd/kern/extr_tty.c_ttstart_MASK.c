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
struct tty {int /*<<< orphan*/  (* t_oproc ) (struct tty*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*) ; 

int
FUNC2(struct tty *tp)
{
	FUNC0(tp);	/* debug assert */

	if (tp->t_oproc != NULL)	/* XXX: Kludge for pty. */
		(*tp->t_oproc)(tp);

	return (0);
}