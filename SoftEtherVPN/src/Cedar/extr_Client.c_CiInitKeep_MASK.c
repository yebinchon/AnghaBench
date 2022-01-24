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
struct TYPE_6__ {int KeepConnectInterval; scalar_t__ KeepConnectProtocol; int /*<<< orphan*/  KeepConnectPort; int /*<<< orphan*/  KeepConnectHost; scalar_t__ UseKeepConnect; } ;
struct TYPE_8__ {TYPE_1__ Config; TYPE_2__* Keep; } ;
struct TYPE_7__ {int Interval; int UdpMode; int Enable; int /*<<< orphan*/  lock; int /*<<< orphan*/  ServerPort; int /*<<< orphan*/  ServerName; } ;
typedef  TYPE_2__ KEEP ;
typedef  TYPE_3__ CLIENT ;

/* Variables and functions */
 scalar_t__ CONNECTION_UDP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(CLIENT *c)
{
	// Validate arguments
	if (c == NULL)
	{
		return;
	}

	c->Keep = FUNC1();

	// Apply settings
	if (c->Config.UseKeepConnect)
	{
		KEEP *k = c->Keep;
		FUNC0(k->lock);
		{
			FUNC2(k->ServerName, sizeof(k->ServerName), c->Config.KeepConnectHost);
			k->ServerPort = c->Config.KeepConnectPort;
			k->Interval = c->Config.KeepConnectInterval * 1000;
			k->UdpMode = (c->Config.KeepConnectProtocol == CONNECTION_UDP) ? true : false;
			k->Enable = true;
		}
		FUNC3(k->lock);
	}
}