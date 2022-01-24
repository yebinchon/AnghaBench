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
typedef  int /*<<< orphan*/  bulk_send_key ;
typedef  int /*<<< orphan*/  bulk_recv_key ;
typedef  int UINT64 ;
typedef  void* UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_10__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_9__ {int NextSendSeqNo; int ServerMode; int Magic_Disconnect; int NextKeepAliveInterval; int Dns_TranId; int BulkNextSeqNo; int /*<<< orphan*/ * BulkNextIv; void* BulkRecvKey; void* BulkSendKey; void* SendFifo; void* RecvFifo; int /*<<< orphan*/  ReplyAckList; int /*<<< orphan*/ * NextIv; int /*<<< orphan*/ * Key_Recv; int /*<<< orphan*/ * Key_Send; int /*<<< orphan*/ * Key_Init; int /*<<< orphan*/ * Magic_KeepAliveResponse; int /*<<< orphan*/ * Magic_KeepAliveRequest; void* RecvSegmentList; void* SendSegmentList; void* LatestRecvMyTick; void* LastRecvTick; scalar_t__ LastSentTick; void* YourPort; int /*<<< orphan*/  YourIp; void* MyPort; int /*<<< orphan*/  MyIp; } ;
typedef  TYPE_1__ RUDP_SESSION ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_2__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 () ; 
 void* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  RUDPCompareSegmentList ; 
 int RUDP_KEEPALIVE_INTERVAL_MAX ; 
 int RUDP_KEEPALIVE_INTERVAL_MIN ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 () ; 
 int FUNC9 () ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,char*) ; 
 TYPE_1__* FUNC14 (int) ; 

RUDP_SESSION *FUNC15(bool server_mode, IP *my_ip, UINT my_port, IP *your_ip, UINT your_port, UCHAR *init_key)
{
	RUDP_SESSION *se;
	UCHAR key1[SHA1_SIZE];
	UCHAR key2[SHA1_SIZE];
	UCHAR bulk_send_key[SHA1_SIZE];
	UCHAR bulk_recv_key[SHA1_SIZE];
	BUF *b;

	se = FUNC14(sizeof(RUDP_SESSION));

	FUNC0(&se->MyIp, my_ip, sizeof(IP));
	se->MyPort = my_port;

	FUNC0(&se->YourIp, your_ip, sizeof(IP));
	se->YourPort = your_port;

	FUNC0(se->Key_Init, init_key, SHA1_SIZE);
	se->LastSentTick = 0;
	se->LastRecvTick = FUNC11();
	se->LatestRecvMyTick = FUNC11();

	se->NextSendSeqNo = 1;

	se->ServerMode = server_mode;

	se->SendSegmentList = FUNC5(RUDPCompareSegmentList);
	se->RecvSegmentList = FUNC5(RUDPCompareSegmentList);

	// Generate the two keys
	b = FUNC2();
	FUNC12(b, init_key, SHA1_SIZE);
	FUNC13(b, "zurukko");
	FUNC10(key1, b->Buf, b->Size);
	FUNC1(b);

	b = FUNC2();
	FUNC12(b, init_key, SHA1_SIZE);
	FUNC12(b, key1, SHA1_SIZE);
	FUNC13(b, "yasushineko");
	FUNC10(key2, b->Buf, b->Size);
	FUNC1(b);

	// Generate the magic number for the KeepAlive
	b = FUNC2();
	FUNC12(b, init_key, SHA1_SIZE);
	FUNC13(b, "Magic_KeepAliveRequest");
	FUNC10(se->Magic_KeepAliveRequest, b->Buf, b->Size);
	FUNC1(b);
	b = FUNC2();
	FUNC12(b, init_key, SHA1_SIZE);
	FUNC13(b, "Magic_KeepAliveResponse");
	FUNC10(se->Magic_KeepAliveResponse, b->Buf, b->Size);
	FUNC1(b);

	if (server_mode == false)
	{
		se->Magic_Disconnect = 0xffffffff00000000ULL | (UINT64)(FUNC9());
	}

	FUNC0(se->Key_Init, init_key, SHA1_SIZE);

	if (se->ServerMode)
	{
		FUNC0(se->Key_Send, key1, SHA1_SIZE);
		FUNC0(se->Key_Recv, key2, SHA1_SIZE);
	}
	else
	{
		FUNC0(se->Key_Send, key2, SHA1_SIZE);
		FUNC0(se->Key_Recv, key1, SHA1_SIZE);
	}

	FUNC7(se->NextIv, sizeof(se->NextIv));

	se->ReplyAckList = FUNC4(true);

	se->NextKeepAliveInterval = RUDP_KEEPALIVE_INTERVAL_MIN + (FUNC9() % (RUDP_KEEPALIVE_INTERVAL_MAX - RUDP_KEEPALIVE_INTERVAL_MIN));

	se->RecvFifo = FUNC3();
	se->SendFifo = FUNC3();

	se->Dns_TranId = FUNC8() % 65535 + 1;

	// Generate the bulk transfer key
	FUNC7(bulk_send_key, sizeof(bulk_send_key));
	FUNC7(bulk_recv_key, sizeof(bulk_recv_key));

	se->BulkSendKey = FUNC6(bulk_send_key, sizeof(bulk_send_key));
	se->BulkRecvKey = FUNC6(bulk_recv_key, sizeof(bulk_recv_key));

	FUNC7(se->BulkNextIv, sizeof(se->BulkNextIv));
	se->BulkNextSeqNo = 1;

	return se;
}