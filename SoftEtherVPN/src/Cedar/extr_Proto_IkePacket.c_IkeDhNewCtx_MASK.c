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
struct TYPE_3__ {int DhId; } ;
typedef  TYPE_1__ IKE_DH ;
typedef  int /*<<< orphan*/  DH_CTX ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 () ; 
#define  IKE_DH_1_ID 133 
#define  IKE_DH_2048_ID 132 
#define  IKE_DH_2_ID 131 
#define  IKE_DH_3072_ID 130 
#define  IKE_DH_4096_ID 129 
#define  IKE_DH_5_ID 128 

DH_CTX *FUNC6(IKE_DH *d)
{
	// Validate arguments
	if (d == NULL)
	{
		return NULL;
	}

	switch (d->DhId)
	{
	case IKE_DH_1_ID:
		return FUNC3();

	case IKE_DH_2_ID:
		return FUNC4();

	case IKE_DH_5_ID:
		return FUNC5();

	case IKE_DH_2048_ID:
		return FUNC0();

	case IKE_DH_3072_ID:
		return FUNC1();

	case IKE_DH_4096_ID:
		return FUNC2();
	}

	return NULL;
}