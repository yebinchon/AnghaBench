#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_5__ {char* RadiusServerName; char* RadiusSuffixFilter; int /*<<< orphan*/  RadiusOptionLock; TYPE_1__* RadiusSecret; scalar_t__ RadiusRetryInterval; scalar_t__ RadiusServerPort; } ;
struct TYPE_4__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
typedef  TYPE_2__ HUB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (scalar_t__) ; 

bool FUNC6(HUB *hub, char *name, UINT size, UINT *port, char *secret, UINT secret_size, UINT *interval, char *suffix_filter, UINT suffix_filter_size)
{
	bool ret = false;
	// Validate arguments
	if (hub == NULL || name == NULL || port == NULL || secret == NULL || interval == NULL)
	{
		return false;
	}

	FUNC2(hub->RadiusOptionLock);
	{
		if (hub->RadiusServerName != NULL)
		{
			char *tmp;
			UINT tmp_size;
			FUNC3(name, size, hub->RadiusServerName);
			*port = hub->RadiusServerPort;
			*interval = hub->RadiusRetryInterval;

			tmp_size = hub->RadiusSecret->Size + 1;
			tmp = FUNC5(tmp_size);
			FUNC0(tmp, hub->RadiusSecret->Buf, hub->RadiusSecret->Size);
			FUNC3(secret, secret_size, tmp);
			FUNC1(tmp);

			if (suffix_filter != NULL)
			{
				FUNC3(suffix_filter, suffix_filter_size, hub->RadiusSuffixFilter);
			}

			ret = true;
		}
	}
	FUNC4(hub->RadiusOptionLock);

	return ret;
}