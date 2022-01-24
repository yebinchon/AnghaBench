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
typedef  int vm_size_t ;
typedef  int vm_offset_t ;
typedef  int vm_address_t ;
struct kasan_alloc_header {int left_rz; int alloc_size; int user_size; int /*<<< orphan*/  crc; int /*<<< orphan*/  frames; int /*<<< orphan*/  magic; } ;
struct kasan_alloc_footer {int /*<<< orphan*/  backtrace; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASAN_HEAP_RZ ; 
 int /*<<< orphan*/  LIVE_XOR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct kasan_alloc_footer* FUNC1 (int,int*) ; 
 struct kasan_alloc_header* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

vm_address_t
FUNC8(vm_offset_t addr, vm_size_t size, vm_size_t req, vm_size_t leftrz)
{
	if (!addr) {
		return 0;
	}
	FUNC0(size > 0);
	FUNC0((addr % 8) == 0);
	FUNC0((size % 8) == 0);

	vm_size_t rightrz = size - req - leftrz;

	FUNC5(addr, req, leftrz, rightrz, ASAN_HEAP_RZ);
	FUNC6(addr, req, leftrz, rightrz);

	addr += leftrz;

	/* stash the allocation sizes in the left redzone */
	struct kasan_alloc_header *h = FUNC2(addr);
	h->magic = FUNC7(addr, LIVE_XOR);
	h->left_rz = leftrz;
	h->alloc_size = size;
	h->user_size = req;

	/* ... and a backtrace in the right redzone */
	vm_size_t fsize;
	struct kasan_alloc_footer *f = FUNC1(addr, &fsize);
	h->frames = FUNC3(f->backtrace, fsize, 2);

	/* checksum the whole object, minus the user part */
	h->crc = FUNC4(addr);

	return addr;
}