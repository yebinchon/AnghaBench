#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_4__ {int DnsOk; int DnsGetIpFromHost; int DnsFinished; TYPE_1__* v; int /*<<< orphan*/  DnsResponseHostName; int /*<<< orphan*/  DnsTargetHostName; int /*<<< orphan*/  DnsResponseIp; } ;
struct TYPE_3__ {int /*<<< orphan*/  SockEvent; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_2__ NAT_ENTRY ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(THREAD *t, void *param)
{
	NAT_ENTRY *n;
	IP ip;
	// Validate arguments
	if (t == NULL || param == NULL)
	{
		return;
	}
	n = (NAT_ENTRY *)param;

	// Notify the initialization completion
	FUNC6(t);

	// Run processing
	if (FUNC3(n->DnsTargetHostName, ".in-addr.arpa") == false)
	{
		// Forward resolution
		if (FUNC5(&ip, n->DnsTargetHostName))
		{
			// Forward resolution success
			FUNC1(&n->DnsResponseIp, &ip, sizeof(IP));
			n->DnsOk = true;
		}
	}
	else
	{
		// Reverse resolution
		IP ip;
		n->DnsGetIpFromHost = true;		// Set the reverse resolution flag
		// Convert a *.in-addr.arpa string to an IP address
		if (FUNC0(&ip, n->DnsTargetHostName))
		{
			// Reverse resolution process
			char tmp[256];
			if (FUNC4(tmp, sizeof(tmp), &ip))
			{
				// Reverse resolution success
				n->DnsResponseHostName = FUNC2(tmp);
				n->DnsOk = true;
			}
		}
	}

	// Notify the results
	n->DnsFinished = true;

	FUNC7(n->v->SockEvent);
}