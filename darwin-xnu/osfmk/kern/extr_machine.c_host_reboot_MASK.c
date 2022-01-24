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
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/ * host_priv_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * HOST_PRIV_NULL ; 
 int HOST_REBOOT_DEBUGGER ; 
 int HOST_REBOOT_HALT ; 
 int HOST_REBOOT_UPSDELAY ; 
 int /*<<< orphan*/  KERN_INVALID_HOST ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  kPEUPSDelayHaltCPU ; 
 int /*<<< orphan*/  realhost ; 

kern_return_t
FUNC4(
	host_priv_t		host_priv,
	int				options)
{
	if (host_priv == HOST_PRIV_NULL)
		return (KERN_INVALID_HOST);

	FUNC2(host_priv == &realhost);

#if DEVELOPMENT || DEBUG
	if (options & HOST_REBOOT_DEBUGGER) {
		Debugger("Debugger");
		return (KERN_SUCCESS);
	}
#endif

    if (options & HOST_REBOOT_UPSDELAY) {
        // UPS power cutoff path
        FUNC1( kPEUPSDelayHaltCPU );
    } else {
       FUNC3(!(options & HOST_REBOOT_HALT));
    }

	return (KERN_SUCCESS);
}