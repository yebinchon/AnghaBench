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
struct tty {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty*) ; 
 int /*<<< orphan*/  FUNC1 (char,struct tty*) ; 

__attribute__((used)) static void
FUNC2(struct tty *tp, int count)
{
	FUNC0(tp);	/* debug assert */

	while (count-- > 0) {
		(void)FUNC1('\b', tp);
		(void)FUNC1(' ', tp);
		(void)FUNC1('\b', tp);
	}
}