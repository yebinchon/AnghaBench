#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ Type; int Connected; int ListenMode; scalar_t__ socket; int SecureMode; int WriteBlocked; scalar_t__ AsyncMode; int /*<<< orphan*/  lock; int /*<<< orphan*/  SendNum; int /*<<< orphan*/  SendSize; } ;
typedef  scalar_t__ SOCKET ;
typedef  TYPE_1__ SOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ EAGAIN ; 
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_SEND_BUF_MEM_SIZE ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int SOCKET_ERROR ; 
 scalar_t__ SOCK_INPROC ; 
 scalar_t__ SOCK_LATER ; 
 scalar_t__ SOCK_TCP ; 
 scalar_t__ FUNC3 (TYPE_1__*,void*,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_1__*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ WSAEWOULDBLOCK ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ errno ; 
 int FUNC7 (scalar_t__,void*,scalar_t__,int /*<<< orphan*/ ) ; 

UINT FUNC8(SOCK *sock, void *data, UINT size, bool secure)
{
	SOCKET s;
	int ret;
	// Validate arguments
	if (sock == NULL || data == NULL || size == 0)
	{
		return 0;
	}
	if (sock->Type == SOCK_INPROC)
	{
		return FUNC4(sock, data, size);
	}
	size = FUNC2(size, MAX_SEND_BUF_MEM_SIZE);
	if (sock->Type != SOCK_TCP || sock->Connected == false || sock->ListenMode != false ||
		sock->socket == INVALID_SOCKET)
	{
		return 0;
	}
	if (secure != false && sock->SecureMode == false)
	{
		return 0;
	}

	if (secure)
	{
		return FUNC3(sock, data, size);
	}

	// Transmission
	s = sock->socket;
	ret = FUNC7(s, data, size, 0);
	if (ret > 0)
	{
		// Successful transmission
		FUNC1(sock->lock);
		{
			sock->SendSize += (UINT64)ret;
			sock->SendNum++;
		}
		FUNC5(sock->lock);
		sock->WriteBlocked = false;
		return (UINT)ret;
	}

	// Transmission failure
	if (sock->AsyncMode)
	{
		// In asynchronous mode, examine the error
		if (ret == SOCKET_ERROR)
		{
#ifdef	OS_WIN32
			if (WSAGetLastError() == WSAEWOULDBLOCK)
			{
				// In blocking
				sock->WriteBlocked = true;
				return SOCK_LATER;
			}
			else
			{
				//Debug("Socket Error: %u\n", WSAGetLastError());
			}
#else	// OS_WIN32
			if (errno == EAGAIN)
			{
				// In blocking
				sock->WriteBlocked = true;
				return SOCK_LATER;
			}
#endif	// OS_WIN32
		}
	}

	// Disconnected
	FUNC0(sock);
	return 0;
}