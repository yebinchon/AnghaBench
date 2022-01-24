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

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int SWAP_COMPACT_DISABLE ; 
 int SWAP_COMPACT_ENABLE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  compressor_store_stop_compaction ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(int flags)
{
	int error;

	if ((error = FUNC2(FUNC0(), 0)))
		return error;

	if (flags & SWAP_COMPACT_DISABLE) {
		compressor_store_stop_compaction = TRUE;

		FUNC1("compressor_store_stop_compaction = TRUE\n");

	} else if (flags & SWAP_COMPACT_ENABLE) {
		compressor_store_stop_compaction = FALSE;

		FUNC1("compressor_store_stop_compaction = FALSE\n");
	}

	return 0;
}