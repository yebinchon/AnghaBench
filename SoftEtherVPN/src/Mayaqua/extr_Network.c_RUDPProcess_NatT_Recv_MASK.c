#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  new_hostname ;
typedef  int /*<<< orphan*/  myip ;
typedef  int /*<<< orphan*/  client_ip_str ;
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_7__ {int Size; int /*<<< orphan*/  Data; } ;
typedef  TYPE_1__ UDPPACKET ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_8__ {char* NatT_Registered_IPAndPort; int NatT_Token_Ok; char* NatT_Token; int NatT_Register_Ok; scalar_t__ NatT_TranId; scalar_t__ Now; char* CurrentRegisterHostname; scalar_t__ NumChangedHostname; scalar_t__ NumChangedHostnameValueResetTick; char NatT_IP; int NatT_EnableSourceIpValidation; scalar_t__ NatT_SessionKey; scalar_t__ NatT_RegisterNextTick; int /*<<< orphan*/  Interrupt; scalar_t__* NatTGlobalUdpPort; scalar_t__ NatT_RegisterFailNum; scalar_t__ NatT_GetTokenNextTick; int /*<<< orphan*/  Lock; int /*<<< orphan*/  HaltEvent; scalar_t__ NatT_GetTokenFailNum; scalar_t__ ServerMode; } ;
typedef  TYPE_2__ RUDP_STACK ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  IP ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (char*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int /*<<< orphan*/ * FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC15 () ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,char*,char*) ; 
 void* FUNC17 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ RUDP_NATT_CONT_CHANGE_HOSTNAME_RESET_INTERVAL ; 
 scalar_t__ RUDP_NATT_MAX_CONT_CHANGE_HOSTNAME ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC30 (char*,char*) ; 
 scalar_t__ FUNC31 (char*,char*) ; 
 int /*<<< orphan*/  FUNC32 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  UDP_NAT_T_GET_TOKEN_INTERVAL_2_MAX ; 
 int /*<<< orphan*/  UDP_NAT_T_GET_TOKEN_INTERVAL_2_MIN ; 
 int /*<<< orphan*/  UDP_NAT_T_REGISTER_INTERVAL_MAX ; 
 int /*<<< orphan*/  UDP_NAT_T_REGISTER_INTERVAL_MIN ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC36 (char*,int) ; 
 int g_source_ip_validation_force_disable ; 

void FUNC37(RUDP_STACK *r, UDPPACKET *udp)
{
	BUF *b;
	PACK *p;
	// Validate arguments
	if (r == NULL || udp == NULL)
	{
		return;
	}

	if (udp->Size >= 8)
	{
		char tmp[128];

		FUNC36(tmp, sizeof(tmp));
		FUNC3(tmp, udp->Data, FUNC13(udp->Size, sizeof(tmp) - 1));

		if (FUNC30(tmp, "IP="))
		{
			IP my_ip;
			UINT my_port;

			// There was a response to the packet to determine the NAT state
			if (FUNC10(r->NatT_Registered_IPAndPort) == false)
			{
				if (FUNC31(r->NatT_Registered_IPAndPort, tmp) != 0)
				{
					// Redo getting the token and registration because the NAT state is changed
					FUNC2(r->NatT_Registered_IPAndPort, sizeof(r->NatT_Registered_IPAndPort));

					r->NatT_GetTokenNextTick = 0;
					r->NatT_GetTokenFailNum = 0;
					r->NatT_Token_Ok = false;
					FUNC36(r->NatT_Token, sizeof(r->NatT_Token));

					r->NatT_RegisterNextTick = 0;
					r->NatT_RegisterFailNum = 0;
					r->NatT_Register_Ok = false;
				}
			}

			if (FUNC23(udp->Data, udp->Size, &my_ip, &my_port))
			{
				if (r->NatTGlobalUdpPort != NULL)
				{
					*r->NatTGlobalUdpPort = my_port;
				}
			}

			return;
		}
	}

	// Interpret the UDP packet
	b = FUNC15();
	FUNC35(b, udp->Data, udp->Size);
	FUNC27(b, 0, 0);

	p = FUNC1(b);

	if (p != NULL)
	{
		bool is_ok = FUNC17(p, "ok");
		UINT64 tran_id = FUNC19(p, "tran_id");

		FUNC5(p);

		if (r->ServerMode)
		{
			if (FUNC16(p, "opcode", "get_token"))
			{
				// Get the Token
				if (is_ok && (tran_id == r->NatT_TranId))
				{
					char tmp[MAX_SIZE];

					if (FUNC20(p, "token", tmp, sizeof(tmp)) && FUNC10(tmp) == false)
					{
						char myip[MAX_SIZE];
						// Acquisition success
						FUNC32(r->NatT_Token, sizeof(r->NatT_Token), tmp);
						r->NatT_Token_Ok = true;
						r->NatT_GetTokenNextTick = r->Now + (UINT64)FUNC9(UDP_NAT_T_GET_TOKEN_INTERVAL_2_MIN, UDP_NAT_T_GET_TOKEN_INTERVAL_2_MAX);
						r->NatT_GetTokenFailNum = 0;

						// Since success to obtain the self global IPv4 address,
						// re-obtain the destination NAT-T host from this IPv4 address
						if (FUNC20(p, "your_ip", myip, sizeof(myip)))
						{
							IP ip;
							char new_hostname[MAX_SIZE];

							FUNC33(&ip, myip);

							FUNC29(&ip, false);

							FUNC22(new_hostname,
								sizeof(new_hostname), &ip);

							FUNC12(r->Lock);
							{
								if (FUNC31(r->CurrentRegisterHostname, new_hostname) != 0)
								{
									r->NumChangedHostname++;

									if (r->NumChangedHostname <= RUDP_NATT_MAX_CONT_CHANGE_HOSTNAME)
									{
										if (r->NumChangedHostnameValueResetTick == 0)
										{
											r->NumChangedHostnameValueResetTick = r->Now + (UINT64)RUDP_NATT_CONT_CHANGE_HOSTNAME_RESET_INTERVAL;
										}

										// Change the host name
										FUNC4("CurrentRegisterHostname Changed: New=%s\n", new_hostname);
										FUNC32(r->CurrentRegisterHostname, sizeof(r->CurrentRegisterHostname), new_hostname);

										FUNC36(&r->NatT_IP, sizeof(r->NatT_IP));
										//Zero(&r->NatT_IP_Safe, sizeof(r->NatT_IP_Safe));

										FUNC28(r->HaltEvent);
									}
									else
									{
										if (r->NumChangedHostnameValueResetTick == 0)
										{
											r->NumChangedHostnameValueResetTick = r->Now + (UINT64)RUDP_NATT_CONT_CHANGE_HOSTNAME_RESET_INTERVAL;
										}

										if (r->Now >= r->NumChangedHostnameValueResetTick)
										{
											r->NumChangedHostname = 0;
											r->NumChangedHostnameValueResetTick = 0;
										}
									}
								}
								else
								{
									r->NumChangedHostname = 0;
									r->NumChangedHostnameValueResetTick = 0;
								}
							}
							FUNC34(r->Lock);
						}

						FUNC0(r->Interrupt, r->NatT_GetTokenNextTick);
					}
				}
			}
			else if (FUNC16(p, "opcode", "nat_t_register"))
			{
				// NAT-T server registration result
				if (is_ok && (tran_id == r->NatT_TranId))
				{
					UINT my_global_port;
					// Successful registration
					r->NatT_Register_Ok = true;
					r->NatT_RegisterNextTick = r->Now + (UINT64)FUNC9(UDP_NAT_T_REGISTER_INTERVAL_MIN, UDP_NAT_T_REGISTER_INTERVAL_MAX);
					r->NatT_RegisterFailNum = 0;

					FUNC4("NAT-T Registered.\n");

					// Save the IP address and port number at the time of registration
					FUNC20(p, "your_ip_and_port", r->NatT_Registered_IPAndPort, sizeof(r->NatT_Registered_IPAndPort));

					if (g_source_ip_validation_force_disable == false)
					{
						// Enable the source IP address validation mechanism
						r->NatT_EnableSourceIpValidation = FUNC17(p, "enable_source_ip_validation");

					}
					else
					{
						// Force disable the source IP address validation mechanism
						r->NatT_EnableSourceIpValidation = false;
					}

					// Global port of itself
					my_global_port = FUNC18(p, "your_port");

					if (my_global_port != 0)
					{
						if (r->NatTGlobalUdpPort != NULL)
						{
							*r->NatTGlobalUdpPort = my_global_port;
						}
					}

					FUNC0(r->Interrupt, r->NatT_RegisterNextTick);
				}
			}
			else if (FUNC16(p, "opcode", "nat_t_connect_relay"))
			{
				// Connection request from the client via the NAT-T server
				if (is_ok && (FUNC19(p, "session_key") == r->NatT_SessionKey))
				{
					char client_ip_str[MAX_SIZE];
					UINT client_port;
					IP client_ip;

					FUNC20(p, "client_ip", client_ip_str, sizeof(client_ip_str));
					client_port = FUNC18(p, "client_port");
					FUNC33(&client_ip, client_ip_str);

					if (FUNC11(&client_ip) == false && client_port != 0)
					{
						UCHAR *rand_data;
						UINT rand_size;

						if (r->NatT_EnableSourceIpValidation)
						{
							FUNC21(r, &client_ip);
						}

						rand_size = FUNC26() % 19;
						rand_data = FUNC14(rand_size);

						FUNC25(rand_data, rand_size);

						FUNC24(r, &client_ip, client_port, rand_data, rand_size, 0);

						FUNC6(rand_data);
					}
				}
			}
		}

		FUNC8(p);
	}

	FUNC7(b);
}