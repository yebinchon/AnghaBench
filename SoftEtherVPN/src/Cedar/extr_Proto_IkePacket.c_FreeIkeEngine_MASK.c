#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_4__ {int /*<<< orphan*/  DhsList; int /*<<< orphan*/  HashesList; int /*<<< orphan*/  CryptosList; } ;
typedef  int /*<<< orphan*/  IKE_HASH ;
typedef  TYPE_1__ IKE_ENGINE ;
typedef  int /*<<< orphan*/  IKE_DH ;
typedef  int /*<<< orphan*/  IKE_CRYPTO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(IKE_ENGINE *e)
{
	UINT i;
	// Validate arguments
	if (e == NULL)
	{
		return;
	}

	for (i = 0;i < FUNC5(e->CryptosList);i++)
	{
		IKE_CRYPTO *c = FUNC4(e->CryptosList, i);

		FUNC1(c);
	}

	FUNC6(e->CryptosList);

	for (i = 0;i < FUNC5(e->HashesList);i++)
	{
		IKE_HASH *h = FUNC4(e->HashesList, i);

		FUNC3(h);
	}
	FUNC6(e->HashesList);

	for (i = 0;i < FUNC5(e->DhsList);i++)
	{
		IKE_DH *d = FUNC4(e->DhsList, i);

		FUNC2(d);
	}
	FUNC6(e->DhsList);

	FUNC0(e);
}