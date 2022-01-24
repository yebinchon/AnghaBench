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
typedef  size_t UINT ;
struct TYPE_3__ {int /*<<< orphan*/  LinkList; } ;
typedef  int /*<<< orphan*/  LINK ;
typedef  TYPE_1__ HUB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(HUB *h)
{
	LINK **kk;
	UINT num, i;
	// Validate arguments
	if (h == NULL)
	{
		return;
	}

	FUNC3(h->LinkList);
	{
		num = FUNC2(h->LinkList);
		kk = FUNC5(h->LinkList);
		FUNC0(h->LinkList);
	}
	FUNC6(h->LinkList);

	for (i = 0;i < num;i++)
	{
		LINK *k = kk[i];

		FUNC4(k);
	}

	FUNC1(kk);
}