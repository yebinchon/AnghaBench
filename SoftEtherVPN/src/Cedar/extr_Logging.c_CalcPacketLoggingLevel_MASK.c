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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int /*<<< orphan*/  LogSetting; } ;
typedef  int /*<<< orphan*/  PKT ;
typedef  TYPE_1__ HUB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PACKET_LOG_NONE ; 

UINT FUNC1(HUB *hub, PKT *packet)
{
	// Validate arguments
	if (hub == NULL || packet == NULL)
	{
		return PACKET_LOG_NONE;
	}

	return FUNC0(&hub->LogSetting, packet);
}