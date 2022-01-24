#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_12__ {int IsSrcUsernameIncludeOrExclude; int IsDestUsernameIncludeOrExclude; scalar_t__ SrcPortStart; scalar_t__ DestPortStart; scalar_t__ Id; void* Loss; void* Jitter; void* Delay; void* DestPortEnd; void* SrcPortEnd; int /*<<< orphan*/  DestUsername; void* DestUsernameHash; int /*<<< orphan*/  SrcUsername; void* SrcUsernameHash; } ;
struct TYPE_11__ {int /*<<< orphan*/  AccessList; } ;
typedef  TYPE_1__ HUB ;
typedef  TYPE_2__ ACCESS ;

/* Variables and functions */
 int /*<<< orphan*/  ACCESS_LIST_EXCLUDED_PREFIX ; 
 int /*<<< orphan*/  ACCESS_LIST_INCLUDED_PREFIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  HUB_ACCESSLIST_DELAY_MAX ; 
 int /*<<< orphan*/  HUB_ACCESSLIST_JITTER_MAX ; 
 int /*<<< orphan*/  HUB_ACCESSLIST_LOSS_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC8 (void*,scalar_t__) ; 
 scalar_t__ MAX_ACCESSLISTS ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 

void FUNC14(HUB *hub, ACCESS *a, bool no_sort, bool no_reassign_id)
{
	// Validate arguments
	if (hub == NULL || a == NULL)
	{
		return;
	}

	FUNC6(hub->AccessList);
	{
		ACCESS *access;
		UINT i;

		// Check the number of items
		if (FUNC5(hub->AccessList) >= MAX_ACCESSLISTS)
		{
			FUNC12(hub->AccessList);
			return;
		}

		access = FUNC10(sizeof(ACCESS));
		FUNC1(access, a, sizeof(ACCESS));

		access->IsSrcUsernameIncludeOrExclude = false;
		access->IsDestUsernameIncludeOrExclude = false;

		// User name correction
		if (FUNC3(access->SrcUsername) == false)
		{
			if (FUNC11(access->SrcUsername, ACCESS_LIST_INCLUDED_PREFIX) == false && FUNC11(access->SrcUsername, ACCESS_LIST_EXCLUDED_PREFIX) == false)
			{
				FUNC9(access->SrcUsername, sizeof(access->SrcUsername), access->SrcUsername);
			}
			else
			{
				access->IsSrcUsernameIncludeOrExclude = true;
			}
		}
		if (FUNC3(access->DestUsername) == false)
		{
			if (FUNC11(access->DestUsername, ACCESS_LIST_INCLUDED_PREFIX) == false && FUNC11(access->DestUsername, ACCESS_LIST_EXCLUDED_PREFIX) == false)
			{
				FUNC9(access->DestUsername, sizeof(access->DestUsername), access->DestUsername);
			}
			else
			{
				access->IsDestUsernameIncludeOrExclude = true;
			}
		}

		access->SrcUsernameHash = FUNC13(access->SrcUsername);
		access->DestUsernameHash = FUNC13(access->DestUsername);

		// Port number correction
		if (access->SrcPortStart != 0)
		{
			access->SrcPortEnd = FUNC8(access->SrcPortEnd, access->SrcPortStart);
		}
		if (access->DestPortStart != 0)
		{
			access->DestPortEnd = FUNC8(access->DestPortEnd, access->DestPortStart);
		}

		// Correct delay, jitter, and packet loss
		access->Delay = FUNC7(access->Delay, 0, HUB_ACCESSLIST_DELAY_MAX);
		access->Jitter = FUNC7(access->Jitter, 0, HUB_ACCESSLIST_JITTER_MAX);
		access->Loss = FUNC7(access->Loss, 0, HUB_ACCESSLIST_LOSS_MAX);

		if (no_sort == false)
		{
			FUNC2(hub->AccessList, access);
		}
		else
		{
			FUNC0(hub->AccessList, access);
		}

		// Reassign the ID
		if (no_reassign_id == false)
		{
			for (i = 0;i < FUNC5(hub->AccessList);i++)
			{
				ACCESS *a = FUNC4(hub->AccessList, i);
				a->Id = (i + 1);
			}
		}
	}
	FUNC12(hub->AccessList);
}