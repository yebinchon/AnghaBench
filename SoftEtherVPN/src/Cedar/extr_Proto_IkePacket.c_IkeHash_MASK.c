#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_3__ {int HashId; } ;
typedef  TYPE_1__ IKE_HASH ;

/* Variables and functions */
#define  IKE_HASH_MD5_ID 132 
#define  IKE_HASH_SHA1_ID 131 
#define  IKE_HASH_SHA2_256_ID 130 
#define  IKE_HASH_SHA2_384_ID 129 
#define  IKE_HASH_SHA2_512_ID 128 
 int /*<<< orphan*/  FUNC0 (void*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (void*,scalar_t__) ; 

void FUNC6(IKE_HASH *h, void *dst, void *src, UINT size)
{
	// Validate arguments
	if (h == NULL || dst == NULL || (size != 0 && src == NULL))
	{
		FUNC5(dst, size);
		return;
	}

	switch (h->HashId)
	{
	case IKE_HASH_MD5_ID:
		// MD5
		FUNC0(dst, src, size);
		break;

	case IKE_HASH_SHA1_ID:
		// SHA-1
		FUNC1(dst, src, size);
		break;
	case IKE_HASH_SHA2_256_ID:
		FUNC2(dst, src, size);
		break;
	case IKE_HASH_SHA2_384_ID:
		FUNC3(dst, src, size);
		break;
	case IKE_HASH_SHA2_512_ID:
		FUNC4(dst, src, size);
		break;

	default:
		// Unknown
		FUNC5(dst, size);
		break;
	}
}