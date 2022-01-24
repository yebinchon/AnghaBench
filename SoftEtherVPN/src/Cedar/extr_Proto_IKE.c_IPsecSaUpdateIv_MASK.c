#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_5__ {scalar_t__ Iv; int IsIvExisting; TYPE_1__* IkeSa; } ;
struct TYPE_4__ {scalar_t__ BlockSize; } ;
typedef  TYPE_2__ IPSECSA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 

void FUNC3(IPSECSA *sa, void *iv, UINT iv_size)
{
	// Validate arguments
	if (sa == NULL || iv == NULL)
	{
		return;
	}

	FUNC0(sa->Iv, iv, FUNC1(sa->IkeSa->BlockSize, iv_size));

	if (iv_size < sa->IkeSa->BlockSize)
	{
		FUNC2(sa->Iv + sa->IkeSa->BlockSize, sa->IkeSa->BlockSize - iv_size);
	}

	sa->IsIvExisting = true;
}