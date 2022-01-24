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
typedef  int /*<<< orphan*/  vm_offset_t ;

/* Variables and functions */
 int INTEL_PGBYTES ; 
 int /*<<< orphan*/  VM_PROT_READ ; 
 int _COMM_PAGE32_AREA_USED ; 
 int /*<<< orphan*/  _COMM_PAGE32_BASE_ADDRESS ; 
 int /*<<< orphan*/  _COMM_PAGE32_START_ADDRESS ; 
 int _COMM_PAGE64_AREA_USED ; 
 int /*<<< orphan*/  _COMM_PAGE64_BASE_ADDRESS ; 
 int _cpu_capabilities ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ commPagePtr32 ; 
 scalar_t__ commPagePtr64 ; 
 int /*<<< orphan*/  commpage32_map ; 
 int /*<<< orphan*/  commpage64_map ; 
 int /*<<< orphan*/  commpage_active_cpus_lock ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  gtod_time_data32 ; 
 int /*<<< orphan*/  gtod_time_data64 ; 
 int k64Bit ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  time_data32 ; 
 int /*<<< orphan*/  time_data64 ; 

void
FUNC13( void )
{
	FUNC2();
	
	FUNC5(	commpage32_map, 
				&commPagePtr32,
				_COMM_PAGE32_AREA_USED,
				_COMM_PAGE32_BASE_ADDRESS,
				&time_data32,
				&gtod_time_data32,
				"commpage 32-bit",
				VM_PROT_READ);
#ifndef __LP64__
	pmap_commpage32_init((vm_offset_t) commPagePtr32, _COMM_PAGE32_BASE_ADDRESS, 
			   _COMM_PAGE32_AREA_USED/INTEL_PGBYTES);
#endif			   
	time_data64 = time_data32;			/* if no 64-bit commpage, point to 32-bit */
	gtod_time_data64 = gtod_time_data32;

	if (_cpu_capabilities & k64Bit) {
		FUNC5(	commpage64_map, 
					&commPagePtr64,
					_COMM_PAGE64_AREA_USED,
					_COMM_PAGE32_START_ADDRESS, /* commpage address are relative to 32-bit commpage placement */
					&time_data64,
					&gtod_time_data64,
					"commpage 64-bit",
					VM_PROT_READ);
#ifndef __LP64__
		pmap_commpage64_init((vm_offset_t) commPagePtr64, _COMM_PAGE64_BASE_ADDRESS, 
				   _COMM_PAGE64_AREA_USED/INTEL_PGBYTES);
#endif
	}

	FUNC12(&commpage_active_cpus_lock, 0);

	FUNC6();
	FUNC3();
	FUNC4();
	FUNC1();
	FUNC11();
	FUNC8();
#if CONFIG_ATM
	commpage_update_atm_diagnostic_config(atm_get_diagnostic_config());
#endif
}