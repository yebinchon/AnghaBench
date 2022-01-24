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
struct TYPE_3__ {size_t NumItem; int /*<<< orphan*/ * ItemType; int /*<<< orphan*/ * ItemName; int /*<<< orphan*/  hWnd; } ;
typedef  TYPE_1__ RPC_ENUM_OBJECT_IN_SECURE ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

void FUNC5(PACK *p, RPC_ENUM_OBJECT_IN_SECURE *e)
{
	UINT i;
	// Validate arguments
	if (e == NULL || p == NULL)
	{
		return;
	}

	FUNC2(p, "NumItem", e->NumItem);
	FUNC0(p, "hWnd", e->hWnd);

	FUNC4(p, "ObjectList");
	for (i = 0;i < e->NumItem;i++)
	{
		FUNC3(p, "ItemName", e->ItemName[i], i, e->NumItem);
		FUNC1(p, "ItemType", e->ItemType[i], i, e->NumItem);
	}
	FUNC4(p, NULL);
}