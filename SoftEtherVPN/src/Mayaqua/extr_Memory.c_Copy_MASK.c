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
typedef  scalar_t__ UINT ;

/* Variables and functions */
 int /*<<< orphan*/  KS_COPY_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,scalar_t__) ; 

void FUNC2(void *dst, void *src, UINT size)
{
	// Validate arguments
	if (dst == NULL || src == NULL || size == 0 || dst == src)
	{
		return;
	}

	// KS
	FUNC0(KS_COPY_COUNT);

	FUNC1(dst, src, size);
}