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
 int /*<<< orphan*/  FUNC0 (void*) ; 
 struct fdt_reserve_entry* FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int FUNC2 (void*,struct fdt_reserve_entry*,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

int FUNC5(void *fdt, uint64_t address, uint64_t size)
{
	struct fdt_reserve_entry *re;
	int err;

	FUNC0(fdt);

	re = FUNC1(fdt, FUNC4(fdt));
	err = FUNC2(fdt, re, 0, 1);
	if (err)
		return err;

	re->address = FUNC3(address);
	re->size = FUNC3(size);
	return 0;
}