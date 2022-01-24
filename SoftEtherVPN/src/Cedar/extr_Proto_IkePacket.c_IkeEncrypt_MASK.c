#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp1600 ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_7__ {TYPE_1__* Crypto; } ;
struct TYPE_6__ {TYPE_4__* Key; int /*<<< orphan*/  NextIv; int /*<<< orphan*/  Iv; } ;
struct TYPE_5__ {int BlockSize; } ;
typedef  TYPE_2__ IKE_CRYPTO_PARAM ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,void*,void*,int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (void*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

BUF *FUNC6(void *data, UINT size, IKE_CRYPTO_PARAM *cparam)
{
	void *tmp;
	BUF *b;
	UCHAR tmp1600[1600];
	bool no_free = false;
	// Validate arguments
	if (data == NULL || cparam == NULL)
	{
		return NULL;
	}

	if ((size % cparam->Key->Crypto->BlockSize) != 0)
	{
		// Not an integral multiple of block size
		return NULL;
	}

	if (size > sizeof(tmp1600))
	{
		tmp = FUNC3(size);
	}
	else
	{
		tmp = tmp1600;
		no_free = true;
	}

	FUNC2(cparam->Key, tmp, data, size, cparam->Iv);

	if (size >= cparam->Key->Crypto->BlockSize)
	{
		FUNC0(cparam->NextIv, ((UCHAR *)tmp) + (size - cparam->Key->Crypto->BlockSize), cparam->Key->Crypto->BlockSize);
	}
	else
	{
		FUNC5(cparam->NextIv, cparam->Key->Crypto->BlockSize);
	}

	b = FUNC4(tmp, size);

	if (no_free == false)
	{
		FUNC1(tmp);
	}

	return b;
}