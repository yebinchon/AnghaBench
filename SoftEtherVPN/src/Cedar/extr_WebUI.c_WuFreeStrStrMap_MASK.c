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
struct TYPE_3__ {struct TYPE_3__* Value; struct TYPE_3__* Name; } ;
typedef  TYPE_1__ STRMAP_ENTRY ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(LIST *params)
{
	UINT i;

	if(params == NULL)
	{
		return;
	}

	for(i=0; i<FUNC2(params); i++)
	{
		STRMAP_ENTRY *e = (STRMAP_ENTRY*)FUNC1(params, i);
		FUNC0(e->Name);
		FUNC0(e->Value);
		FUNC0(e);
	}
	FUNC3(params);
}