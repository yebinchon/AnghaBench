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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  _original ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static uint32_t
FUNC4(void)
{
    kern_return_t kr;
    kr = FUNC2(FUNC3(), &_original);
    T_QUIET; FUNC0(kr, "host_get_atm_diagnostic_flag()");
    FUNC1("Original ATM diagnostic flag: 0x%08x", _original);
    return _original;
}