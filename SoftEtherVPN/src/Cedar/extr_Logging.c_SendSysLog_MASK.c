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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_3__ {scalar_t__ NextPollIp; scalar_t__ DestPort; int /*<<< orphan*/  lock; int /*<<< orphan*/  DestIp; int /*<<< orphan*/  Udp; int /*<<< orphan*/  HostName; } ;
typedef  TYPE_1__ SLOG ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ SYSLOG_POLL_IP_INTERVAL ; 
 scalar_t__ SYSLOG_POLL_IP_INTERVAL_NG ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int) ; 

void FUNC11(SLOG *g, wchar_t *str)
{
	UCHAR *buf;
	UINT buf_size;
	// Validate arguments
	if (g == NULL || str == NULL)
	{
		return;
	}

	buf_size = FUNC0(str);
	buf = FUNC10(buf_size);
	FUNC8(buf, buf_size, str);

	if (buf_size >= 1024)
	{
		buf_size = 1023;
	}

	FUNC5(g->lock);
	{
		if (FUNC7() >= g->NextPollIp)
		{
			IP ip;

			if (FUNC3(&ip, g->HostName))
			{
				g->NextPollIp = FUNC7() + SYSLOG_POLL_IP_INTERVAL;
				FUNC1(&g->DestIp, &ip, sizeof(IP));
			}
			else
			{
				g->NextPollIp = FUNC7() + SYSLOG_POLL_IP_INTERVAL_NG;
			}
		}

		if (g->DestPort != 0 && FUNC4(&g->DestIp) == false)
		{
			FUNC6(g->Udp, &g->DestIp, g->DestPort, buf, buf_size);
		}
	}
	FUNC9(g->lock);

	FUNC2(buf);
}