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
struct TYPE_3__ {scalar_t__ Iv; scalar_t__ BlockSize; int IsIvExisting; } ;
typedef  TYPE_1__ IKE_SA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 

void FUNC3(IKE_SA *sa, void *iv, UINT iv_size)
{
	// Validate arguments
	if (sa == NULL || iv == NULL)
	{
		return;
	}

	FUNC0(sa->Iv, iv, FUNC1(sa->BlockSize, iv_size));

	if (iv_size < sa->BlockSize)
	{
		FUNC2(sa->Iv + sa->BlockSize, sa->BlockSize - iv_size);
	}

	sa->IsIvExisting = true;
}