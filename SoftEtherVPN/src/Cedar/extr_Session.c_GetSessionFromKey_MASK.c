#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_8__ {int /*<<< orphan*/  HubList; } ;
struct TYPE_7__ {int /*<<< orphan*/  SessionList; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  ref; int /*<<< orphan*/  SessionKey; } ;
typedef  TYPE_1__ SESSION ;
typedef  TYPE_2__ HUB ;
typedef  TYPE_3__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

SESSION *FUNC8(CEDAR *cedar, UCHAR *session_key)
{
	HUB *h;
	UINT i, j;
	// Validate arguments
	if (cedar == NULL || session_key == NULL)
	{
		return NULL;
	}

	FUNC5(cedar->HubList);
	{
		for (i = 0;i < FUNC3(cedar->HubList);i++)
		{
			h = FUNC2(cedar->HubList, i);
			FUNC5(h->SessionList);
			{
				for (j = 0;j < FUNC3(h->SessionList);j++)
				{
					SESSION *s = FUNC2(h->SessionList, j);
					FUNC4(s->lock);
					{
						if (FUNC1(s->SessionKey, session_key, SHA1_SIZE) == 0)
						{
							// Session found
							FUNC0(s->ref);

							// Unlock
							FUNC6(s->lock);
							FUNC7(h->SessionList);
							FUNC7(cedar->HubList);
							return s;
						}
					}
					FUNC6(s->lock);
				}
			}
			FUNC7(h->SessionList);
		}
	}
	FUNC7(cedar->HubList);

	return NULL;
}