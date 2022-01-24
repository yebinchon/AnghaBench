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
struct TYPE_3__ {int /*<<< orphan*/  RadiusOptionLock; void* RadiusSecret; void* RadiusRetryInterval; scalar_t__ RadiusServerPort; int /*<<< orphan*/ * RadiusServerName; } ;
typedef  TYPE_1__ HUB ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 () ; 
 void* RADIUS_RETRY_INTERVAL ; 
 scalar_t__ RADIUS_RETRY_TIMEOUT ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,char*,int /*<<< orphan*/ ) ; 

void FUNC9(HUB *hub, char *name, UINT port, char *secret, UINT interval)
{
	// Validate arguments
	if (hub == NULL)
	{
		return;
	}

	FUNC3(hub->RadiusOptionLock);
	{
		if (hub->RadiusServerName != NULL)
		{
			FUNC1(hub->RadiusServerName);
		}

		if (name == NULL)
		{
			hub->RadiusServerName = NULL;
			hub->RadiusServerPort = 0;
			hub->RadiusRetryInterval = RADIUS_RETRY_INTERVAL;
			FUNC2(hub->RadiusSecret);
		}
		else
		{
			hub->RadiusServerName = FUNC0(name);
			hub->RadiusServerPort = port;
			if (interval == 0)
			{
				hub->RadiusRetryInterval = RADIUS_RETRY_INTERVAL;
			}
			else if (interval > RADIUS_RETRY_TIMEOUT)
			{
				hub->RadiusRetryInterval = RADIUS_RETRY_TIMEOUT;
			}
			else
			{
				hub->RadiusRetryInterval = interval;
			}
			FUNC2(hub->RadiusSecret);

			if (secret == NULL)
			{
				hub->RadiusSecret = FUNC4();
			}
			else
			{
				hub->RadiusSecret = FUNC4();
				FUNC8(hub->RadiusSecret, secret, FUNC6(secret));
				FUNC5(hub->RadiusSecret, 0, 0);
			}
		}
	}
	FUNC7(hub->RadiusOptionLock);
}