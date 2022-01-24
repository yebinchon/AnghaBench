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
struct TYPE_3__ {scalar_t__* List; int /*<<< orphan*/  Val; } ;
typedef  scalar_t__ MCPhysReg ;
typedef  TYPE_1__ DiffListIterator ;

/* Variables and functions */

__attribute__((used)) static bool FUNC0(DiffListIterator *d)
{
	MCPhysReg D;

	if (d->List == 0)
		return false;

	D = *d->List;
	d->List++;
	d->Val += D;

	if (!D)
		d->List = 0;

	return (D != 0);
}