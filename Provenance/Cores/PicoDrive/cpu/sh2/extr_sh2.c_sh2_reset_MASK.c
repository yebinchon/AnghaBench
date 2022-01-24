#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ pending_int_irq; scalar_t__ vbr; int /*<<< orphan*/  sr; void** r; void* pc; } ;
typedef  TYPE_1__ SH2 ;

/* Variables and functions */
 int /*<<< orphan*/  I ; 
 void* FUNC0 (int,TYPE_1__*) ; 

void FUNC1(SH2 *sh2)
{
	sh2->pc = FUNC0(0, sh2);
	sh2->r[15] = FUNC0(4, sh2);
	sh2->sr = I;
	sh2->vbr = 0;
	sh2->pending_int_irq = 0;
}