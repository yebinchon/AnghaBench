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
typedef  int /*<<< orphan*/  uint64_t ;
struct fdt_reserve_entry {void* size; void* address; } ;

/* Variables and functions */
 int FDT_ERR_BADSTATE ; 
 int FDT_ERR_NOSPACE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int) ; 
 scalar_t__ FUNC4 (void*) ; 
 int FUNC5 (void*) ; 

int FUNC6(void *fdt, uint64_t addr, uint64_t size)
{
	struct fdt_reserve_entry *re;
	int offset;

	FUNC0(fdt);

	if (FUNC4(fdt))
		return -FDT_ERR_BADSTATE;

	offset = FUNC2(fdt);
	if ((offset + sizeof(*re)) > FUNC5(fdt))
		return -FDT_ERR_NOSPACE;

	re = (struct fdt_reserve_entry *)((char *)fdt + offset);
	re->address = FUNC1(addr);
	re->size = FUNC1(size);

	FUNC3(fdt, offset + sizeof(*re));

	return 0;
}