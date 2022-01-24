#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_8__ {int /*<<< orphan*/  StormList; } ;
struct TYPE_7__ {int StrictMode; int /*<<< orphan*/ * MacAddress; int /*<<< orphan*/  DestIp; int /*<<< orphan*/  SrcIp; } ;
typedef  TYPE_1__ STORM ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_2__ HUB_PA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 

STORM *FUNC3(HUB_PA *pa, UCHAR *mac_address, IP *src_ip, IP *dest_ip, bool strict)
{
	STORM *s;
	// Validate arguments
	if (pa == NULL || mac_address == NULL)
	{
		return NULL;
	}

	s = FUNC2(sizeof(STORM));
	if (src_ip != NULL)
	{
		FUNC0(&s->SrcIp, src_ip, sizeof(IP));
	}
	if (dest_ip != NULL)
	{
		FUNC0(&s->DestIp, dest_ip, sizeof(IP));
	}
	FUNC0(s->MacAddress, mac_address, 6);
	s->StrictMode = strict;

	FUNC1(pa->StormList, s);

	return s;
}