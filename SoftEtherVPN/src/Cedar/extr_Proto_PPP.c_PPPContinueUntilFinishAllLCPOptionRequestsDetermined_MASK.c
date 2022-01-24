#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  USHORT ;
struct TYPE_4__ {int ClientLCPOptionDetermined; } ;
typedef  TYPE_1__ PPP_SESSION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  PPP_PROTOCOL_LCP ; 

bool FUNC1(PPP_SESSION *p)
{
	USHORT received_protocol = 0;
	// Validate arguments
	if (p == NULL)
	{
		return false;
	}

	FUNC0(p, NULL, PPP_PROTOCOL_LCP, &received_protocol, true, false);

	return p->ClientLCPOptionDetermined;
}