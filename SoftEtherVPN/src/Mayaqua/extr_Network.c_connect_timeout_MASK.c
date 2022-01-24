#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zero ;
typedef  int /*<<< orphan*/  tmp ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  WSAEVENT ;
typedef  scalar_t__ UINT64 ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_2__ {int /*<<< orphan*/  OsType; } ;
typedef  scalar_t__ SOCKET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FD_CONNECT ; 
 int /*<<< orphan*/  FIONBIO ; 
 TYPE_1__* FUNC2 () ; 
 scalar_t__ INVALID_SOCKET ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int TIMEOUT_TCP_PORT_CHECK ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 int WSAEALREADY ; 
 int WSAEINVAL ; 
 int WSAEISCONN ; 
 int WSAEWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (scalar_t__,struct sockaddr*,int) ; 

int FUNC11(SOCKET s, struct sockaddr *addr, int size, int timeout, bool *cancel_flag)
{
	UINT64 start_time;
	bool ok = false;
	bool timeouted = false;
	WSAEVENT hEvent;
	UINT zero = 0;
	UINT tmp = 0;
	UINT ret_size = 0;
	bool is_nt = false;
	// Validate arguments
	if (s == INVALID_SOCKET || addr == NULL)
	{
		return -1;
	}
	if (timeout == 0)
	{
		timeout = TIMEOUT_TCP_PORT_CHECK;
	}

	is_nt = FUNC3(FUNC2()->OsType);

	// Create an event
	hEvent = FUNC1(NULL, FALSE, FALSE, NULL);

	// Associate the socket with the event
	FUNC6(s, hEvent, FD_CONNECT);

	start_time = FUNC5();

	while (true)
	{
		int ret;
		
		ret = FUNC10(s, addr, size);

		if (ret == 0)
		{
			ok = true;
			break;
		}
		else
		{
			int err = FUNC7();
			//Debug("err=%u\n", err);
			//Debug("cancel_flag=%u\n", *cancel_flag);
			if (timeouted && ((err == WSAEALREADY) || (err == WSAEWOULDBLOCK && !is_nt)))
			{
				// Time-out
				ok = false;
				break;
			}
			if (*cancel_flag)
			{
				// Cancel
				ok = false;
				break;
			}
			if (err == WSAEISCONN || (err == WSAEINVAL && is_nt))
			{
				ok = true;
				break;
			}
			if (((start_time + (UINT64)timeout) <= FUNC5()) || (err != WSAEWOULDBLOCK && err != WSAEALREADY && (is_nt || err != WSAEINVAL)))
			{
				// Failure (timeout)
				break;
			}
			else
			{
				FUNC4(10);
				// Connecting
				if (FUNC9(hEvent, 100) == WAIT_OBJECT_0)
				{
					timeouted = true;
				}
			}
		}
	}

	// Remove the socket from the event
	FUNC6(s, hEvent, 0);

	// Restore to synchronized socket
	FUNC8(s, FIONBIO, &zero, sizeof(zero), &tmp, sizeof(tmp), &ret_size, NULL, NULL);

	// Close the event
	FUNC0(hEvent);

	if (ok)
	{
		return 0;
	}
	else
	{
		return -1;
	}
}