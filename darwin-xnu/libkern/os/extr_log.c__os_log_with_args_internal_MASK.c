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
typedef  int /*<<< orphan*/  va_list ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  os_log_type_t ;
typedef  int /*<<< orphan*/ * os_log_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int ATM_TRACE_DISABLE ; 
 int ATM_TRACE_OFF ; 
 int /*<<< orphan*/  _os_log_replay ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  early_boot_complete ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static void
FUNC4(os_log_t oslog, os_log_type_t type,
		const char *format, va_list args, void *addr, void *dso)
{
    uint32_t  logging_config = FUNC2();
    boolean_t safe;
    boolean_t logging;

    if (format[0] == '\0') {
        return;
    }

    /* early boot can log to dmesg for later replay (27307943) */
    safe = (!early_boot_complete || FUNC3());

	if (logging_config & ATM_TRACE_DISABLE || logging_config & ATM_TRACE_OFF) {
		logging = false;
	} else {
		logging = true;
	}

    if (oslog != &_os_log_replay) {
        FUNC1(format, args, safe, logging);
    }

    if (safe && logging) {
        FUNC0(oslog, type, format, args, addr, dso);
    }
}