#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  int /*<<< orphan*/  vm_address_t ;
typedef  unsigned int uint64_t ;
struct TYPE_5__ {int /*<<< orphan*/ * mzn_name; } ;
typedef  TYPE_1__ mach_zone_name_t ;
struct TYPE_6__ {unsigned int mzi_elem_size; } ;
typedef  TYPE_2__ mach_zone_info_t ;
typedef  int /*<<< orphan*/  mach_memory_info_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  T_END ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__**,unsigned int*,TYPE_2__**,unsigned int*,int /*<<< orphan*/ **,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 size_t FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char const*,size_t) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(void)
{
	kern_return_t kr;
	uint64_t size, i;
	mach_zone_name_t *name = NULL;
	unsigned int nameCnt = 0;
	mach_zone_info_t *info = NULL;
	unsigned int infoCnt = 0;
	mach_memory_info_t *wiredInfo = NULL;
	unsigned int wiredInfoCnt = 0;
	const char kalloc_str[] = "kalloc.";

	kr = FUNC4(FUNC3(),
			&name, &nameCnt, &info, &infoCnt,
			&wiredInfo, &wiredInfoCnt);
	T_QUIET; FUNC1(kr, "mach_memory_info");
	T_QUIET; FUNC0(nameCnt, infoCnt, "zone name and info counts don't match");

	/* Match the names of the kalloc zones against their element sizes. */
	for (i = 0; i < nameCnt; i++) {
		if (FUNC7(name[i].mzn_name, kalloc_str, FUNC6(kalloc_str)) == 0) {
			size = FUNC8(&(name[i].mzn_name[FUNC6(kalloc_str)]), NULL, 10);
			FUNC2("ZONE NAME: %-25s ELEMENT SIZE: %llu", name[i].mzn_name, size);
			T_QUIET; FUNC0(size, info[i].mzi_elem_size, "kalloc zone name and element size don't match");
		}
	}

	if ((name != NULL) && (nameCnt != 0)) {
		kr = FUNC9(FUNC5(), (vm_address_t) name,
				(vm_size_t) (nameCnt * sizeof *name));
		T_QUIET; FUNC1(kr, "vm_deallocate name");
	}

	if ((info != NULL) && (infoCnt != 0)) {
		kr = FUNC9(FUNC5(), (vm_address_t) info,
				(vm_size_t) (infoCnt * sizeof *info));
		T_QUIET; FUNC1(kr, "vm_deallocate info");
	}

	if ((wiredInfo != NULL) && (wiredInfoCnt != 0)) {
		kr = FUNC9(FUNC5(), (vm_address_t) wiredInfo,
				(vm_size_t) (wiredInfoCnt * sizeof *wiredInfo));
		T_QUIET; FUNC1(kr, "vm_deallocate wiredInfo");
	}

	T_END;
}