#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WU_CONTEXT ;
struct TYPE_6__ {int /*<<< orphan*/  PageList; int /*<<< orphan*/  Contexts; scalar_t__ Value; struct TYPE_6__* Name; } ;
typedef  TYPE_1__ WEBUI ;
typedef  scalar_t__ UINT ;
typedef  TYPE_1__ STRMAP_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

bool FUNC5(WEBUI *wu)
{
	UINT i;

	if(wu == NULL)
	{
		return false;
	}

	for(i=0; i<FUNC2(wu->Contexts); i++)
	{
		STRMAP_ENTRY *se = FUNC1(wu->Contexts, i);
		FUNC0(se->Name);
		FUNC4((WU_CONTEXT*)se->Value);
		FUNC0(se);
	}
	FUNC3(wu->Contexts);

	FUNC3(wu->PageList);
	FUNC0(wu);
	return true;
}