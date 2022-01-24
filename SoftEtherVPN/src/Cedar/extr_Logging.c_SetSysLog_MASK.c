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
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  NextPollIp; int /*<<< orphan*/  HostName; scalar_t__ DestPort; int /*<<< orphan*/  DestIp; } ;
typedef  TYPE_1__ SLOG ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYSLOG_POLL_IP_INTERVAL ; 
 int /*<<< orphan*/  SYSLOG_POLL_IP_INTERVAL_NG ; 
 scalar_t__ SYSLOG_PORT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

void FUNC8(SLOG *g, char *hostname, UINT port)
{
	IP ip;
	// Validate arguments
	if (g == NULL)
	{
		return;
	}
	if (port == 0)
	{
		port = SYSLOG_PORT;
	}

	if (hostname == NULL)
	{
		hostname = "";
	}

	FUNC7(&ip, sizeof(IP));
	FUNC1(&ip, hostname);

	FUNC3(g->lock);
	{
		FUNC0(&g->DestIp, &ip, sizeof(IP));
		g->DestPort = port;
		FUNC4(g->HostName, sizeof(g->HostName), hostname);
		g->NextPollIp = FUNC5() + FUNC2(&ip) ? SYSLOG_POLL_IP_INTERVAL_NG : SYSLOG_POLL_IP_INTERVAL;
	}
	FUNC6(g->lock);
}