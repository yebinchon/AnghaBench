#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  void* UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_18__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_17__ {char* TmpBuf; int UdpIpQueryPacketSize; scalar_t__ UdpIpQueryPort; scalar_t__ MyPortByNatTServer; int MyPortByNatTServerChanged; int FatalError; scalar_t__ NextSendKeepAlive; scalar_t__ Now; int YourPortByNatTServerChanged; int FastDetect; int NoNatT; scalar_t__ NextPerformNatTTick; scalar_t__ UseSuperRelayQuery; scalar_t__ UseUdpIpQuery; scalar_t__ CommToNatT_NumFail; TYPE_8__* UdpSock; int /*<<< orphan*/  RecvBlockQueue; int /*<<< orphan*/  UdpIpQueryPacketData; TYPE_2__ UdpIpQueryHost; int /*<<< orphan*/ * NatT_GetIpThread; int /*<<< orphan*/  NatT_Lock; int /*<<< orphan*/  NatT_IP; } ;
typedef  TYPE_1__ UDP_ACCEL ;
typedef  char UCHAR ;
struct TYPE_19__ {int IgnoreRecvErr; } ;
typedef  TYPE_2__ IP ;
typedef  int /*<<< orphan*/  BUF ;
typedef  int /*<<< orphan*/  BLOCK ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_NUM_IGNORE_ERRORS ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (char*,scalar_t__,TYPE_2__*,scalar_t__*) ; 
 scalar_t__ FUNC11 (TYPE_8__*,TYPE_2__*,scalar_t__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ SOCK_LATER ; 
 int /*<<< orphan*/  FUNC13 (TYPE_8__*,TYPE_2__*,scalar_t__,char*,int) ; 
 scalar_t__ UDP_ACCELERATION_KEEPALIVE_INTERVAL_MAX ; 
 scalar_t__ UDP_ACCELERATION_KEEPALIVE_INTERVAL_MAX_FAST ; 
 scalar_t__ UDP_ACCELERATION_KEEPALIVE_INTERVAL_MIN ; 
 scalar_t__ UDP_ACCELERATION_KEEPALIVE_INTERVAL_MIN_FAST ; 
 int /*<<< orphan*/  UDP_ACCELERATION_TMP_BUF_SIZE ; 
 int /*<<< orphan*/  UDP_NAT_T_INTERVAL_FAIL_MAX ; 
 scalar_t__ UDP_NAT_T_INTERVAL_INITIAL ; 
 int /*<<< orphan*/  UDP_NAT_T_INTERVAL_MAX ; 
 int /*<<< orphan*/  UDP_NAT_T_INTERVAL_MIN ; 
 scalar_t__ UDP_NAT_T_PORT ; 
 int FUNC14 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC15 (TYPE_1__*,char*,scalar_t__,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 () ; 

void FUNC20(UDP_ACCEL *a)
{
	IP nat_t_ip;
	UINT num_ignore_errors = 0;
	UCHAR *tmp;
	// Validate arguments
	if (a == NULL)
	{
		return;
	}

	tmp = a->TmpBuf;

	FUNC7(a->NatT_Lock);
	{
		FUNC1(&nat_t_ip, &a->NatT_IP, sizeof(IP));
	}
	FUNC17(a->NatT_Lock);

	if (FUNC6(&nat_t_ip) == false)
	{
		// Release the thread which gets the IP address of the NAT-T server because it is no longer needed
		if (a->NatT_GetIpThread != NULL)
		{
			FUNC18(a->NatT_GetIpThread, INFINITE);
			FUNC12(a->NatT_GetIpThread);
			a->NatT_GetIpThread = NULL;
		}
	}

	// Receive a new UDP packet
	while (true)
	{
		IP src_ip;
		UINT src_port;
		UINT ret;

		ret = FUNC11(a->UdpSock, &src_ip, &src_port, tmp, UDP_ACCELERATION_TMP_BUF_SIZE);

		if (ret != 0 && ret != SOCK_LATER)
		{
			if (a->UseUdpIpQuery && a->UdpIpQueryPacketSize >= 8 && FUNC0(&a->UdpIpQueryHost, &src_ip) == 0 &&
				src_port == a->UdpIpQueryPort)
			{
				// Receive a response of the query for IP and port number
				IP my_ip = {0};
				UINT myport = 0;
				BUF *b = FUNC9(a->UdpIpQueryPacketData, a->UdpIpQueryPacketSize);


				FUNC3(b);
			}
			else if (FUNC6(&nat_t_ip) == false && FUNC0(&nat_t_ip, &src_ip) == 0 &&
				src_port == UDP_NAT_T_PORT)
			{
				// Receive a response from the NAT-T server
				IP my_ip;
				UINT myport;

				if (FUNC10(tmp, ret, &my_ip, &myport))
				{
					if (myport >= 1 && myport <= 65535)
					{
						if (a->MyPortByNatTServer != myport)
						{
							a->MyPortByNatTServer = myport;
							a->MyPortByNatTServerChanged = true;
							a->CommToNatT_NumFail = 0;

							FUNC2("NAT-T: MyPort = %u\n", myport);
						}
					}
				}
/*
				BUF *b = NewBuf();
				PACK *p;

				WriteBuf(b, tmp, ret);
				SeekBufToBegin(b);

				p = BufToPack(b);
				if (p != NULL)
				{
					if (PackCmpStr(p, "opcode", "query_for_nat_traversal"))
					{
						if (PackGetBool(p, "ok"))
						{
							if (PackGetInt64(p, "tran_id") == a->NatT_TranId)
							{
								UINT myport = PackGetInt(p, "your_port");

								if (myport >= 1 && myport <= 65535)
								{
									if (a->MyPortByNatTServer != myport)
									{
										a->MyPortByNatTServer = myport;
										a->MyPortByNatTServerChanged = true;

										Debug("NAT-T: MyPort = %u\n", myport);
									}
								}
							}
						}
					}

					FreePack(p);
				}

				FreeBuf(b);*/
			}
			else
			{
				BLOCK *b = FUNC15(a, tmp, ret, &src_ip, src_port);

				//Debug("UDP Recv: %u %u %u\n", ret, (b == NULL ? 0 : b->Size), (b == NULL ? 0 : b->Compressed));

				/*if (b != NULL)
				{
					char tmp[MAX_SIZE * 10];
					BinToStr(tmp, sizeof(tmp), b->Buf, b->Size);
					Debug("Recv Pkt: %s\n", tmp);
				}*/

				if (b != NULL)
				{
					// Receive a packet
					FUNC5(a->RecvBlockQueue, b);
				}
			}
		}
		else
		{
			if (ret == 0)
			{
				if (a->UdpSock->IgnoreRecvErr == false)
				{
					// Serious UDP reception error occurs
					a->FatalError = true;
					break;
				}

				if ((num_ignore_errors++) >= MAX_NUM_IGNORE_ERRORS)
				{
					a->FatalError = true;
					break;
				}
			}
			else
			{
				// SOCK_LATER
				break;
			}
		}
	}

	// Send a Keep-Alive packet
	if (a->NextSendKeepAlive == 0 || (a->NextSendKeepAlive <= a->Now) || a->YourPortByNatTServerChanged)
	{
		a->YourPortByNatTServerChanged = false;

		if (FUNC14(a, false))
		{
			UINT rand_interval;

			if (a->FastDetect == false)
			{
				rand_interval = FUNC19() % (UDP_ACCELERATION_KEEPALIVE_INTERVAL_MAX - UDP_ACCELERATION_KEEPALIVE_INTERVAL_MIN) + UDP_ACCELERATION_KEEPALIVE_INTERVAL_MIN;
			}
			else
			{
				rand_interval = FUNC19() % (UDP_ACCELERATION_KEEPALIVE_INTERVAL_MAX_FAST - UDP_ACCELERATION_KEEPALIVE_INTERVAL_MIN_FAST) + UDP_ACCELERATION_KEEPALIVE_INTERVAL_MIN_FAST;
			}

			a->NextSendKeepAlive = a->Now + (UINT64)rand_interval;

			//Debug("UDP KeepAlive\n");

			FUNC16(a, NULL, 0, false, 1000, false);
		}
	}

	// Send a NAT-T request packet (Only if the connection by UDP has not be established yet)
	if (a->NoNatT == false)
	{
		// In the usual case
		if (FUNC6(&nat_t_ip) == false)
		{
			if (FUNC14(a, true) == false)
			{
				if (a->NextPerformNatTTick == 0 || (a->NextPerformNatTTick <= a->Now))
				{
					UINT rand_interval;
					UCHAR c = 'B';

					a->CommToNatT_NumFail++;
					
					rand_interval = UDP_NAT_T_INTERVAL_INITIAL * FUNC8(a->CommToNatT_NumFail, UDP_NAT_T_INTERVAL_FAIL_MAX);
					//PACK *p = NewPack();
					//BUF *b;

					if (a->MyPortByNatTServer != 0)
					{
						rand_interval = FUNC4(UDP_NAT_T_INTERVAL_MIN, UDP_NAT_T_INTERVAL_MAX);
					}

					a->NextPerformNatTTick = a->Now + (UINT64)rand_interval;

					// Generate the request packet
					/*PackAddStr(p, "description", UDP_NAT_T_SIGNATURE);
					PackAddStr(p, "opcode", "query_for_nat_traversal");
					PackAddInt64(p, "tran_id", a->NatT_TranId);
					b = PackToBuf(p);
					FreePack(p);*/

					// Send the request packet
					FUNC13(a->UdpSock, &nat_t_ip, UDP_NAT_T_PORT, &c, 1);

					//FreeBuf(b);
				}
			}
			else
			{
				a->NextPerformNatTTick = 0;
				a->CommToNatT_NumFail = 0;
			}
		}
	}
	else
	{
		// NAT_T is disabled, but there is a reference host (such as VGC)
		if (a->UseUdpIpQuery || a->UseSuperRelayQuery)
		{
		}
	}
}