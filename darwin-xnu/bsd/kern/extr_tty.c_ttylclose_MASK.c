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
 int FNONBLOCK ; 
 int FREAD ; 
 int FWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct tty*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*,int) ; 
 scalar_t__ FUNC2 (struct tty*) ; 

int
FUNC3(struct tty *tp, int flag)
{
	FUNC0(tp);	/* debug assert */

	if ( (flag & FNONBLOCK) || FUNC2(tp))
		FUNC1(tp, FREAD | FWRITE);

	return (0);
}