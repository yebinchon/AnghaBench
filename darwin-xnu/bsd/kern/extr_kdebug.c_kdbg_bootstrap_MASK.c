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
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_2__ {int /*<<< orphan*/  kdebug_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  KDBG_WRAPPED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ kd_ctrl_page ; 

int
FUNC1(boolean_t early_trace)
{
	kd_ctrl_page.kdebug_flags &= ~KDBG_WRAPPED;

	return (FUNC0(early_trace));
}