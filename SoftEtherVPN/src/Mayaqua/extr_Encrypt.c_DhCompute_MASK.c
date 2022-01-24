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
typedef  int UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_3__ {int Size; int /*<<< orphan*/  dh; } ;
typedef  TYPE_1__ DH_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (void*,int) ; 
 int /*<<< orphan*/ * FUNC2 (void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int) ; 

bool FUNC6(DH_CTX *dh, void *dst_priv_key, void *src_pub_key, UINT key_size)
{
	int i;
	BIGNUM *bn;
	bool ret = false;
	// Validate arguments
	if (dh == NULL || dst_priv_key == NULL || src_pub_key == NULL)
	{
		return false;
	}
	if (key_size > dh->Size)
	{
		return false;
	}

	bn = FUNC1(src_pub_key, key_size);

	i = FUNC4(dst_priv_key, bn, dh->dh);

	if (i == dh->Size)
	{
		ret = true;
	}
	else if ((UINT)i < dh->Size)
	{
		UCHAR *dst2 = FUNC2(dst_priv_key, i);

		FUNC5(dst_priv_key, dh->Size);

		FUNC3(((UCHAR *)dst_priv_key) + (dh->Size - i), dst2, i);

		ret = true;
	}

	FUNC0(bn);

	return ret;
}