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
typedef  unsigned int mach_vm_size_t ;
typedef  scalar_t__ mach_vm_address_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int FALSE ; 
 char* FILENAME ; 
 int /*<<< orphan*/  F_NOCACHE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 unsigned int SUPERPAGE_SIZE ; 
 int TRUE ; 
 int VM_FLAGS_ANYWHERE ; 
 int VM_FLAGS_SUPERPAGE_SIZE_2MB ; 
 int FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  error ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__*,unsigned int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 scalar_t__ FUNC7 (void*,void*,unsigned int) ; 
 int FUNC8 (char*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (int,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 

boolean_t
FUNC11() {
	mach_vm_address_t addr1 = 0;
	mach_vm_address_t addr2 = 0;
	mach_vm_size_t	size = SUPERPAGE_SIZE;
	int kr, ret;
	int fd;
	unsigned int bytes;
	
	/* allocate one superpage */
	kr = FUNC5(FUNC4(), &addr1, size, VM_FLAGS_ANYWHERE | VM_FLAGS_SUPERPAGE_SIZE_2MB);
	if (!(ret = FUNC0(kr, "mach_vm_allocate (1)"))) return ret;

	/* allocate base pages (superpage-sized) */
	kr = FUNC5(FUNC4(), &addr2, size, VM_FLAGS_ANYWHERE);
	if (!(ret = FUNC0(kr, "mach_vm_allocate (2)"))) return ret;

	if ((fd = FUNC8(FILENAME, O_RDONLY))<0) {
		FUNC10(error, "couldn't open %s", FILENAME);
		return FALSE;
	}
	FUNC2(fd, F_NOCACHE, 1);
	/* read kernel into superpage */
	if ((bytes = FUNC9(fd, (void*)(uintptr_t)addr1, SUPERPAGE_SIZE)) < SUPERPAGE_SIZE) {
		FUNC10(error, "short read (1)");
		return FALSE;
	}
	FUNC3(fd, 0, SEEK_SET);
	/* read kernel into base pages */
	if ((bytes = FUNC9(fd, (void*)(uintptr_t)addr2, SUPERPAGE_SIZE)) < SUPERPAGE_SIZE) {
		FUNC10(error, "short read (2)");
		return FALSE;
	}
	FUNC1(fd);
	
	/* compare */
	if (FUNC7((void*)(uintptr_t)addr1, (void*)(uintptr_t)addr2, bytes)) {
		FUNC10(error, "read data corrupt");
		return FALSE;
	}

	kr = FUNC6(FUNC4(), addr1, size);
	if (!(ret = FUNC0(kr, "mach_vm_deallocate (1)"))) return ret;
	kr = FUNC6(FUNC4(), addr2, size);
	if (!(ret = FUNC0(kr, "mach_vm_deallocate (2)"))) return ret;
	return TRUE;
}