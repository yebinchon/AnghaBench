#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hostname ;
struct TYPE_10__ {int Delay; int* CancelFlag; int Tcp_InNegotiation; int Ok; int Finished; int /*<<< orphan*/  FinishEvent; int /*<<< orphan*/  FinishedTick; TYPE_1__* Result_Tcp_Sock; int /*<<< orphan*/  CancelLock; TYPE_1__* CancelDisconnectSock; int /*<<< orphan*/  Hostname; scalar_t__ Tcp_TryStartSsl; int /*<<< orphan*/  Timeout; int /*<<< orphan*/  Port; int /*<<< orphan*/  Ip; } ;
struct TYPE_9__ {int /*<<< orphan*/  ref; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_1__ SOCK ;
typedef  TYPE_2__ CONNECT_TCP_RUDP_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int INFINITE ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int*) ; 

void FUNC14(THREAD *thread, void *param)
{
	SOCK *sock;
	char hostname[MAX_SIZE];
	CONNECT_TCP_RUDP_PARAM *p = (CONNECT_TCP_RUDP_PARAM *)param;
	if (thread == NULL || p == NULL)
	{
		return;
	}

	// Delay
	if (p->Delay >= 1)
	{
		FUNC13(NULL, p->Delay, p->CancelFlag);
	}

	// Connecting process
	FUNC5(hostname, sizeof(hostname), &p->Ip);
	sock = FUNC1(hostname, p->Port, p->Timeout, p->CancelFlag, NULL, NULL, false, true);

	if (sock != NULL && p->Tcp_TryStartSsl)
	{
		bool ssl_ret = false;

		p->Tcp_InNegotiation = true;

		// Attempt the SSL negotiation to take this opportunity
		FUNC6(p->CancelLock);
		{
			if ((*p->CancelFlag) == false)
			{
				p->CancelDisconnectSock = sock;
				FUNC0(sock->ref);
			}
			else
			{
				FUNC2("User Cancel to StartSSL.\n");
				goto LABEL_CANCEL;
			}
		}
		FUNC12(p->CancelLock);

		// Start the SSL communication
		ssl_ret = FUNC10(sock, NULL, NULL, 0, p->Hostname);

		if (ssl_ret)
		{
			// Identify whether the HTTPS server to be connected is a SoftEther VPN
			FUNC9(sock, (10 * 1000));
			ssl_ret = FUNC3(sock);
			FUNC9(sock, INFINITE);

			if (ssl_ret == false)
			{
				FUNC2("DetectIsServerSoftEtherVPN Error.\n");
			}
		}

		FUNC6(p->CancelLock);
		{
			FUNC7(p->CancelDisconnectSock);
			p->CancelDisconnectSock = NULL;
		}
LABEL_CANCEL:
		FUNC12(p->CancelLock);

		if (ssl_ret == false)
		{
			// SSL negotiation failure
			FUNC4(sock);
			FUNC7(sock);

			FUNC2("Fail to StartSSL.\n");

			sock = NULL;
		}
	}

	p->Result_Tcp_Sock = sock;
	p->Ok = (p->Result_Tcp_Sock == NULL ? false : true);
	p->FinishedTick = FUNC11();
	p->Finished = true;
	p->Tcp_InNegotiation = false;

	FUNC8(p->FinishEvent);
}