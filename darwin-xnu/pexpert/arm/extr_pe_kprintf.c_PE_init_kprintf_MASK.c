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
typedef  int /*<<< orphan*/  boot_arg ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_2__ {scalar_t__ initialized; } ;

/* Variables and functions */
 unsigned int DB_KPRT ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  PE_kputc ; 
 scalar_t__ FUNC0 (char*,unsigned int*,int) ; 
 TYPE_1__ PE_state ; 
 int /*<<< orphan*/  cnputc ; 
 scalar_t__ disable_serial_output ; 
 int /*<<< orphan*/  kprintf_lock ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  serial_putc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC4(boolean_t vm_initialized)
{
	unsigned int    boot_arg;

	if (PE_state.initialized == FALSE)
		FUNC1("Platform Expert not initialized");

	if (!vm_initialized) {
		FUNC3(&kprintf_lock, 0);

		if (FUNC0("debug", &boot_arg, sizeof (boot_arg)))
			if (boot_arg & DB_KPRT)
				disable_serial_output = FALSE;

		if (FUNC2())
			PE_kputc = serial_putc;
		else
			PE_kputc = cnputc;
	}
}