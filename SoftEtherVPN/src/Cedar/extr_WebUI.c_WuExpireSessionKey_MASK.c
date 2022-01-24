#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ ExpireDate; } ;
typedef  TYPE_1__ WU_CONTEXT ;
struct TYPE_10__ {int /*<<< orphan*/ * Contexts; } ;
typedef  TYPE_2__ WEBUI ;
typedef  scalar_t__ UINT ;
struct TYPE_11__ {scalar_t__ Value; struct TYPE_11__* Name; } ;
typedef  TYPE_3__ STRMAP_ENTRY ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

__attribute__((used)) static void FUNC11(WEBUI *wu)
{
	LIST *Expired = FUNC6(NULL);
	UINT i;

	FUNC5(wu->Contexts);

	for(i=0; i<FUNC4(wu->Contexts); i++)
	{
		STRMAP_ENTRY *entry = (STRMAP_ENTRY*)FUNC3(wu->Contexts, i);
		WU_CONTEXT *context = (WU_CONTEXT*)entry->Value;
		if(context->ExpireDate < FUNC8())
		{
			FUNC0(Expired, entry);
		}
	}

	for(i=0; i<FUNC4(Expired); i++)
	{
		STRMAP_ENTRY *entry = FUNC3(Expired, i); 
		FUNC1(wu->Contexts, entry);
		FUNC2(entry->Name);
		FUNC10(entry->Value);
		FUNC2(entry);
	}
	FUNC7(Expired);

	FUNC9(wu->Contexts);
}