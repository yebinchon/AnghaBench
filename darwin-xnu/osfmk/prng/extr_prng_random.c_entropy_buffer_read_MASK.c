#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_4__ {int* buffer; } ;
struct TYPE_3__ {int /*<<< orphan*/  seedset; } ;

/* Variables and functions */
 size_t ENTROPY_BUFFER_BYTE_SIZE ; 
 int ENTROPY_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 TYPE_2__ EntropyData ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ erandom ; 
 int /*<<< orphan*/  FUNC2 (void*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void
FUNC5(void * buffer, size_t * count)
{
	boolean_t current_state;
	unsigned int i, j;

	if (!erandom.seedset) {
		FUNC4("early_random was never invoked");
	}

	if (*count > ENTROPY_BUFFER_BYTE_SIZE) {
		*count = ENTROPY_BUFFER_BYTE_SIZE;
	}

	current_state = FUNC3(FALSE);

	FUNC2(buffer, EntropyData.buffer, *count);

	/* Consider removing this mixing step rdar://problem/31668239 */
	for (i = 0, j = (ENTROPY_BUFFER_SIZE - 1); i < ENTROPY_BUFFER_SIZE; j = i, i++)
		EntropyData.buffer[i] = EntropyData.buffer[i] ^ EntropyData.buffer[j];

	(void)FUNC3(current_state);

#if DEVELOPMENT || DEBUG
	uint32_t * word = buffer;
	/* Good for both 32-bit and 64-bit kernels. */
	for (i = 0; i < ENTROPY_BUFFER_SIZE; i += 4)
		/*
		 * We use "EARLY" here so that we can grab early entropy on
		 * ARM, where tracing is not started until after PRNG is
		 * initialized.
		 */
		KERNEL_DEBUG_EARLY(ENTROPY_READ(i / 4), word[i + 0], word[i + 1], word[i + 2], word[i + 3]);
#endif
}