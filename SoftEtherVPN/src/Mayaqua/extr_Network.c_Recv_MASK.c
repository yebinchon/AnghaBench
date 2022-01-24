#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_7__ {int NoNeedToRead; scalar_t__ Type; int Connected; int ListenMode; scalar_t__ socket; int SecureMode; int AsyncMode; int /*<<< orphan*/  lock; int /*<<< orphan*/  SendNum; int /*<<< orphan*/  RecvSize; scalar_t__ CallingThread; } ;
typedef  int /*<<< orphan*/  SOCKET_TIMEOUT_PARAM ;
typedef  scalar_t__ SOCKET ;
typedef  TYPE_1__ SOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,void*,scalar_t__) ; 
 int SOCKET_ERROR ; 
 scalar_t__ SOCK_INPROC ; 
 scalar_t__ SOCK_LATER ; 
 scalar_t__ SOCK_TCP ; 
 scalar_t__ FUNC5 (TYPE_1__*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ WSAEWOULDBLOCK ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC8 () ; 
 int FUNC9 (scalar_t__,void*,scalar_t__,int /*<<< orphan*/ ) ; 

UINT FUNC10(SOCK *sock, void *data, UINT size, bool secure)
{
	SOCKET s;
	int ret;

#ifdef UNIX_SOLARIS
	SOCKET_TIMEOUT_PARAM *ttparam;
#endif //UNIX_SOLARIS

	// Validate arguments
	if (sock == NULL || data == NULL || size == 0)
	{
		return 0;
	}

	sock->NoNeedToRead = false;

	if (sock->Type == SOCK_INPROC)
	{
		return FUNC4(sock, data, size);
	}
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
		return FUNC5(sock, data, size);
	}

	// Receive
	s = sock->socket;


#ifdef	OS_UNIX
	if (sock->AsyncMode == false)
	{
		sock->CallingThread = pthread_self();
	}
#endif	// OS_UNIX

// Start of the timeout thread for SOLARIS
#ifdef UNIX_SOLARIS
	ttparam = NewSocketTimeout(sock);
#endif // UNIX_SOLARIS

	ret = FUNC9(s, data, size, 0);

// Stop the timeout thread
#ifdef UNIX_SOLARIS
	FreeSocketTimeout(ttparam);
#endif // UNIX_SOLARIS

#ifdef	OS_UNIX
	if (sock->AsyncMode == false)
	{
		sock->CallingThread = 0;
	}
#endif	// OS_UNIX

	if (ret > 0)
	{
		// Successful reception
		FUNC2(sock->lock);
		{
			sock->RecvSize += (UINT64)ret;
			sock->SendNum++;
		}
		FUNC6(sock->lock);
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
				return SOCK_LATER;
			}
#endif	// OS_WIN32
		}
	}

	// Disconnected
	FUNC0(sock);
	return 0;
}