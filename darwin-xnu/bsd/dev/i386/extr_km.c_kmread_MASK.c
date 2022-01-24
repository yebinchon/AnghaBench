#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct uio {int dummy; } ;
struct tty {size_t t_line; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_2__ {int (* l_read ) (struct tty*,struct uio*,int) ;} ;

/* Variables and functions */
 struct tty** km_tty ; 
 TYPE_1__* linesw ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tty*,struct uio*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 

int 
FUNC4(dev_t dev, struct uio *uio, int ioflag)
{
	int ret;
	struct tty *tp = km_tty[FUNC0(dev)];

	FUNC2(tp);
	ret = (*linesw[tp->t_line].l_read)(tp, uio, ioflag);
	FUNC3(tp);

	return (ret);
}