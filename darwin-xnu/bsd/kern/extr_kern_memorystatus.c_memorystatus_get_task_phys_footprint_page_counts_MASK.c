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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  task_t ;

/* Variables and functions */
 int PAGE_SIZE_64 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(task_t task,
						 uint64_t *internal_pages, uint64_t *internal_compressed_pages,
						 uint64_t *purgeable_nonvolatile_pages, uint64_t *purgeable_nonvolatile_compressed_pages,
						 uint64_t *alternate_accounting_pages, uint64_t *alternate_accounting_compressed_pages,
						 uint64_t *iokit_mapped_pages, uint64_t *page_table_pages)
{
	FUNC0(task);

	if (internal_pages) {
		*internal_pages = (FUNC3(task) / PAGE_SIZE_64);
	}

	if (internal_compressed_pages) {
		*internal_compressed_pages = (FUNC4(task) / PAGE_SIZE_64);
	}

	if (purgeable_nonvolatile_pages) {
		*purgeable_nonvolatile_pages = (FUNC7(task) / PAGE_SIZE_64);
	}

	if (purgeable_nonvolatile_compressed_pages) {
		*purgeable_nonvolatile_compressed_pages = (FUNC8(task) / PAGE_SIZE_64);
	}

	if (alternate_accounting_pages) {
		*alternate_accounting_pages = (FUNC1(task) / PAGE_SIZE_64);
	}

	if (alternate_accounting_compressed_pages) {
		*alternate_accounting_compressed_pages = (FUNC2(task) / PAGE_SIZE_64);
	}

	if (iokit_mapped_pages) {
		*iokit_mapped_pages = (FUNC5(task) / PAGE_SIZE_64);
	}

	if (page_table_pages) {
		*page_table_pages = (FUNC6(task) / PAGE_SIZE_64);
	}
}