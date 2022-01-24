#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
typedef  scalar_t__ UCHAR ;
struct TYPE_11__ {scalar_t__ Size; void* Buf; } ;
struct TYPE_10__ {scalar_t__ HashSize; } ;
typedef  TYPE_1__ IKE_HASH ;
typedef  TYPE_2__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int IKE_MAX_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__*,void*,scalar_t__,scalar_t__*,scalar_t__) ; 
 TYPE_2__* FUNC2 (void*,scalar_t__) ; 
 TYPE_2__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__*,scalar_t__) ; 

BUF *FUNC5(IKE_HASH *h, void *k, UINT k_size, UINT target_size)
{
	BUF *b1, *b2;
	UCHAR tmp[IKE_MAX_HASH_SIZE];
	UINT tmp_size;
	// Validate arguments
	if (h == NULL || k == NULL || k_size == 0)
	{
		return NULL;
	}

	if (k_size >= target_size)
	{
		return FUNC2(k, target_size);
	}

	tmp[0] = 0;
	tmp_size = 1;
	b1 = FUNC3();

	do
	{
		FUNC1(h, tmp, k, k_size, tmp, tmp_size);
		FUNC4(b1, tmp, h->HashSize);

		tmp_size = h->HashSize;
	}
	while (b1->Size < target_size);

	b2 = FUNC2(b1->Buf, target_size);

	FUNC0(b1);

	return b2;
}