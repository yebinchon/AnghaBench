#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ socket; int /*<<< orphan*/  disconnect_lock; int /*<<< orphan*/  ssl_lock; int /*<<< orphan*/  lock; struct TYPE_9__* WaitToUseCipher; struct TYPE_9__* CipherName; int /*<<< orphan*/ * LocalX; int /*<<< orphan*/ * RemoteX; int /*<<< orphan*/ * hAcceptEvent; struct TYPE_9__* RemoteHostname; int /*<<< orphan*/  SendBuf; int /*<<< orphan*/ * R_UDP_Stack; int /*<<< orphan*/ * InProcRecvFifo; int /*<<< orphan*/ * BulkRecvKey; int /*<<< orphan*/ * BulkSendKey; int /*<<< orphan*/ * BulkSendTube; int /*<<< orphan*/ * BulkRecvTube; int /*<<< orphan*/ * RecvTube; int /*<<< orphan*/ * SendTube; int /*<<< orphan*/ * ReverseAcceptEvent; int /*<<< orphan*/ * ReverseAcceptQueue; int /*<<< orphan*/ * InProcAcceptEvent; int /*<<< orphan*/ * InProcAcceptQueue; } ;
typedef  TYPE_1__ SOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  num_tcp_connections ; 

void FUNC20(SOCK *s)
{
	// Validate arguments
	if (s == NULL)
	{
		return;
	}

//	{Debug("CleanupSock: Disconnect() Called: %s %u\n", __FILE__, __LINE__);Disconnect(s);}
	FUNC3(s);

	if (s->InProcAcceptQueue != NULL)
	{
		while (true)
		{
			SOCK *ss = FUNC8(s->InProcAcceptQueue);
			if (ss == NULL)
			{
				break;
			}

			FUNC3(ss);
			FUNC13(ss);
		}

		FUNC11(s->InProcAcceptQueue);
	}

	if (s->InProcAcceptEvent != NULL)
	{
		FUNC9(s->InProcAcceptEvent);
	}

	if (s->ReverseAcceptQueue != NULL)
	{
		while (true)
		{
			SOCK *ss = FUNC8(s->ReverseAcceptQueue);
			if (ss == NULL)
			{
				break;
			}

			FUNC3(ss);
			FUNC13(ss);
		}

		FUNC11(s->ReverseAcceptQueue);
	}

	if (s->ReverseAcceptEvent != NULL)
	{
		FUNC9(s->ReverseAcceptEvent);
	}

	if (s->SendTube != NULL)
	{
		FUNC15(s->SendTube);
		FUNC14(s->SendTube);
	}

	if (s->RecvTube != NULL)
	{
		FUNC15(s->RecvTube);
		FUNC14(s->RecvTube);
	}

	if (s->BulkRecvTube != NULL)
	{
		FUNC15(s->BulkRecvTube);
		FUNC14(s->BulkRecvTube);
	}

	if (s->BulkSendTube != NULL)
	{
		FUNC15(s->BulkSendTube);
		FUNC14(s->BulkSendTube);
	}

	if (s->BulkSendKey != NULL)
	{
		FUNC12(s->BulkSendKey);
	}

	if (s->BulkRecvKey != NULL)
	{
		FUNC12(s->BulkRecvKey);
	}

	if (s->InProcRecvFifo != NULL)
	{
		FUNC10(s->InProcRecvFifo);
	}

	if (s->R_UDP_Stack != NULL)
	{
		FUNC6(s->R_UDP_Stack);
	}

#ifdef	OS_WIN32
	Win32FreeAsyncSocket(s);
#else	// OS_WIN32
	FUNC16(s);
#endif	// OS_WIN32

	FUNC5(s->SendBuf);
	if (s->socket != INVALID_SOCKET)
	{
#ifdef	OS_WIN32
		closesocket(s->socket);
#else	// OS_WIN32
		FUNC18(s->socket);
#endif	// OS_WIN32
	}
	FUNC4(s->RemoteHostname);

#ifdef	OS_WIN32
	if (s->hAcceptEvent != NULL)
	{
		CloseHandle(s->hAcceptEvent);
	}
#endif	// OS_WIN32

	// Release the certificate
	if (s->RemoteX != NULL)
	{
		FUNC7(s->RemoteX);
		s->RemoteX = NULL;
	}
	if (s->LocalX != NULL)
	{
		FUNC7(s->LocalX);
		s->LocalX = NULL;
	}

	// Cipher algorithm name
	if (s->CipherName != NULL)
	{
		FUNC4(s->CipherName);
		s->CipherName = NULL;
	}

	FUNC4(s->WaitToUseCipher);
	FUNC2(s->lock);
	FUNC2(s->ssl_lock);
	FUNC2(s->disconnect_lock);

	FUNC1(num_tcp_connections);

	FUNC4(s);
}