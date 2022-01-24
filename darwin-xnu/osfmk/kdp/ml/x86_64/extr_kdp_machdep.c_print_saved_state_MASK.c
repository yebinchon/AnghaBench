#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* rip; } ;
struct TYPE_4__ {struct TYPE_4__* cr2; TYPE_1__ isf; } ;
typedef  TYPE_2__ x86_saved_state64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void FUNC1(void *state)
{
    x86_saved_state64_t		*saved_state;

    saved_state = state;

	FUNC0("pc = 0x%llx\n", saved_state->isf.rip);
	FUNC0("cr2= 0x%llx\n", saved_state->cr2);
	FUNC0("rp = TODO FIXME\n");
	FUNC0("sp = %p\n", saved_state);

}