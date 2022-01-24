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
struct TYPE_2__ {unsigned int initialized; } ;

/* Variables and functions */
 unsigned int DB_KPRT ; 
 unsigned int FALSE ; 
 int /*<<< orphan*/  PE_kputc ; 
 scalar_t__ FUNC0 (char*,unsigned int*,int) ; 
 TYPE_1__ PE_state ; 
 unsigned int TRUE ; 
 int /*<<< orphan*/  cnputc ; 
 unsigned int disable_serial_output ; 
 int /*<<< orphan*/  kprintf_lock ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  pal_serial_putc ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(boolean_t vm_initialized)
{
	unsigned int	boot_arg;

	if (PE_state.initialized == FALSE)
		FUNC2("Platform Expert not initialized");

	if (!vm_initialized) {
		unsigned int new_disable_serial_output = TRUE;

		FUNC3(&kprintf_lock, 0);

		if (FUNC0("debug", &boot_arg, sizeof (boot_arg)))
			if (boot_arg & DB_KPRT)
				new_disable_serial_output = FALSE;

		/* If we are newly enabling serial, make sure we only
		 * call pal_serial_init() if our previous state was
		 * not enabled */
		if (!new_disable_serial_output && (!disable_serial_output || FUNC1()))
			PE_kputc = pal_serial_putc;
		else
			PE_kputc = cnputc;

		disable_serial_output = new_disable_serial_output;
	}
}