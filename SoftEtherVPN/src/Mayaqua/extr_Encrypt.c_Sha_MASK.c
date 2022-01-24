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
 int /*<<< orphan*/  FUNC0 (void*,scalar_t__,void*) ; 
#define  SHA1_160 131 
 int /*<<< orphan*/  FUNC1 (void*,scalar_t__,void*) ; 
#define  SHA2_256 130 
#define  SHA2_384 129 
#define  SHA2_512 128 
 int /*<<< orphan*/  FUNC2 (void*,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,scalar_t__,void*) ; 

void FUNC4(UINT sha_type, void *dst, void *src, UINT size)
{
	// Validate arguments
	if (dst == NULL || (src == NULL && size != 0))
	{
		return;
	}

	switch(sha_type) {
	case SHA1_160:
		FUNC0(src, size, dst);
		break;
	case SHA2_256:
		FUNC1(src, size, dst);
		break;
	case SHA2_384:
		FUNC2(src, size, dst);
		break;
	case SHA2_512:
		FUNC3(src, size, dst);
		break;
	}
}