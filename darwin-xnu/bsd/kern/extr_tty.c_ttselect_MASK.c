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
struct tty {int dummy; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_2__ {struct tty** d_ttys; } ;

/* Variables and functions */
 TYPE_1__* cdevsw ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 int FUNC4 (struct tty*,int,void*,int /*<<< orphan*/ ) ; 

int
FUNC5(dev_t dev, int rw, void *wql, proc_t p)
{
	int	rv;
	struct tty *tp = cdevsw[FUNC0(dev)].d_ttys[FUNC1(dev)];

	FUNC2(tp);
	rv =  FUNC4(tp, rw, wql, p);
	FUNC3(tp);

	return (rv);
}