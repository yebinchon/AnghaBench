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
struct TYPE_3__ {int /*<<< orphan*/  t_dev; } ;

/* Variables and functions */
 int initialized ; 
 TYPE_1__** km_tty ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 () ; 

void
FUNC2(void)
{
	km_tty[0] = FUNC1();
   	km_tty[0]->t_dev = FUNC0(12, 0);
	initialized = 1;
}