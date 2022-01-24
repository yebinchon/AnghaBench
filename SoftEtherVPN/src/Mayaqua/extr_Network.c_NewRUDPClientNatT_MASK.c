#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  result_ip_str ;
typedef  int /*<<< orphan*/  ip_str ;
typedef  int /*<<< orphan*/  hostname ;
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_19__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_18__ {int IgnoreRecvErr; int IPv6; } ;
typedef  int /*<<< orphan*/  SOCK_EVENT ;
typedef  TYPE_1__ SOCK ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  IP ;
typedef  int /*<<< orphan*/  INTERRUPT_MANAGER ;
typedef  TYPE_2__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ INFINITE ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int /*<<< orphan*/ *) ; 
 int FUNC11 (char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ FUNC17 (scalar_t__,int) ; 
 scalar_t__ MAX_NUM_IGNORE_ERRORS ; 
 int MAX_SIZE ; 
 scalar_t__ FUNC18 (scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC19 (scalar_t__) ; 
 TYPE_2__* FUNC20 () ; 
 int /*<<< orphan*/ * FUNC21 () ; 
 int /*<<< orphan*/ * FUNC22 () ; 
 TYPE_1__* FUNC23 (char*,int /*<<< orphan*/ *,scalar_t__,scalar_t__*,scalar_t__,int*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC24 () ; 
 TYPE_1__* FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC30 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC32 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,char*,char*,int) ; 
 TYPE_2__* FUNC34 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC35 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC36 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ RUDP_ERROR_NAT_T_NOT_FOUND ; 
 scalar_t__ RUDP_ERROR_NAT_T_NO_RESPONSE ; 
 scalar_t__ RUDP_ERROR_NAT_T_TWO_OR_MORE ; 
 scalar_t__ RUDP_ERROR_OK ; 
 scalar_t__ RUDP_ERROR_TIMEOUT ; 
 scalar_t__ RUDP_ERROR_UNKNOWN ; 
 scalar_t__ RUDP_ERROR_USER_CANCELED ; 
 scalar_t__ RUDP_TIMEOUT ; 
 scalar_t__ FUNC37 () ; 
 scalar_t__ FUNC38 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC39 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ *) ; 
 scalar_t__ SOCK_LATER ; 
 int /*<<< orphan*/  FUNC41 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC44 () ; 
 int /*<<< orphan*/  UDP_NAT_TRAVERSAL_VERSION ; 
 scalar_t__ UDP_NAT_T_CONNECT_INTERVAL ; 
 scalar_t__ UDP_NAT_T_PORT ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC46 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__) ; 

SOCK *FUNC47(char *svc_name, IP *ip, UINT *error_code, UINT timeout, bool *cancel, char *hint_str, char *target_hostname)
{
	IP nat_t_ip;
	UINT dummy_int = 0;
	UINT64 giveup_tick;
	bool dummy_bool = false;
	SOCK_EVENT *sock_event;
	SOCK *sock;
	bool same_lan = false;
	char hostname[MAX_SIZE];



	if (timeout == 0)
	{
		timeout = RUDP_TIMEOUT;
	}
	if (error_code == NULL)
	{
		error_code = &dummy_int;
	}
	if (cancel == NULL)
	{
		cancel = &dummy_bool;
	}
	*error_code = RUDP_ERROR_UNKNOWN;
	if (svc_name == NULL || ip == NULL)
	{
		return NULL;
	}

	FUNC16();

	giveup_tick = FUNC44() + (UINT64)timeout;

	// Get the IP address of the NAT-T server
	FUNC36(hostname, sizeof(hostname), ip);
	if (FUNC8(&nat_t_ip, hostname, 0, cancel) == false)
	{
		*error_code = RUDP_ERROR_NAT_T_NO_RESPONSE;
		return NULL;
	}

	if (FUNC44() >= giveup_tick)
	{
		*error_code = RUDP_ERROR_TIMEOUT;
		return NULL;
	}
	if (*cancel)
	{
		*error_code = RUDP_ERROR_USER_CANCELED;
		return NULL;
	}

	sock = FUNC25(&nat_t_ip, 0);
	if (sock == NULL)
	{
		*error_code = RUDP_ERROR_UNKNOWN;
		return NULL;
	}
	else
	{
		UINT64 next_send_request_tick = 0;
		INTERRUPT_MANAGER *interrupt = FUNC21();
		UINT64 tran_id = FUNC37();
		UINT tmp_size = 65536;
		UCHAR *tmp = FUNC19(tmp_size);
		char result_ip_str[MAX_SIZE];
		IP result_ip;
		UINT result_port;
		SOCK *ret = NULL;
		UINT num_tries = 0;
		UINT64 current_cookie = 0;

		FUNC0(interrupt, giveup_tick);

		sock_event = FUNC24();
		FUNC15(sock, sock_event);

		// Communication with the NAT-T server
		while (true)
		{
			UINT64 now = FUNC44();
			UINT interval;
			UINT r;
			IP src_ip;
			UINT src_port;
			UINT err;
			UINT num_ignore_errors = 0;

			if (now >= giveup_tick)
			{
				// Time-out
LABEL_TIMEOUT:
				*error_code = RUDP_ERROR_NAT_T_NO_RESPONSE;
				break;
			}

			if (*cancel)
			{
				// User canceled
				*error_code = RUDP_ERROR_USER_CANCELED;
				break;
			}

			err = INFINITE;

			// Receive a response packet from the NAT-T server
			while (err == INFINITE)
			{
				r = FUNC38(sock, &src_ip, &src_port, tmp, tmp_size);
				if (r == SOCK_LATER)
				{
					// No packet
					break;
				}
				else if (r == 0)
				{
					if (sock->IgnoreRecvErr == false)
					{
						// Communication error
						goto LABEL_TIMEOUT;
					}
					else
					{
						if ((num_ignore_errors++) >= MAX_NUM_IGNORE_ERRORS)
						{
							goto LABEL_TIMEOUT;
						}
					}
				}
				else
				{
					// Check the source IP address and the port number
					if (FUNC2(&src_ip, &nat_t_ip) == 0 && src_port == UDP_NAT_T_PORT)
					{
						BUF *b = FUNC20();
						PACK *p;

						FUNC46(b, tmp, r);
						FUNC41(b, 0, 0);


						p = FUNC1(b);

						if (p != NULL)
						{
							UINT64 cookie = FUNC32(p, "cookie");
							if (cookie != 0)
							{
								current_cookie = cookie;
							}

							// Compare tran_id
							if (FUNC32(p, "tran_id") == tran_id)
							{
								// Compare opcode
								if (FUNC29(p, "opcode", "nat_t_connect_request"))
								{
									bool ok = FUNC30(p, "ok");
									bool multi_candidate = FUNC30(p, "multi_candidates");

									if (ok)
									{
										// Success
										FUNC33(p, "result_ip", result_ip_str, sizeof(result_ip_str));
										FUNC43(&result_ip, result_ip_str);

										result_port = FUNC31(p, "result_port");

										same_lan = FUNC30(p, "same_lan");

										if (result_port != 0)
										{
											if (FUNC14(&result_ip) == false)
											{
												if ((sock->IPv6 == false && FUNC12(&result_ip)) ||
													(sock->IPv6 && FUNC13(&result_ip)))
												{
													err = RUDP_ERROR_OK;
												}
											}
										}
									}
									else if (multi_candidate)
									{
										// There are two or more computers behind the specified IP address
										err = RUDP_ERROR_NAT_T_TWO_OR_MORE;
									}
									else
									{
										// Failure
										err = RUDP_ERROR_NAT_T_NOT_FOUND;
									}
								}
							}

							FUNC7(p);
						}

						FUNC5(b);
					}
				}
			}

			if (err != INFINITE)
			{
				*error_code = err;
				break;
			}

			if (next_send_request_tick == 0 || now >= next_send_request_tick)
			{
				// Send a connection request to the NAT-T server
				BUF *b;
				char ip_str[MAX_SIZE];
				PACK *p = FUNC22();

				FUNC28(p, "opcode", "nat_t_connect_request");
				FUNC27(p, "tran_id", tran_id);
				FUNC10(ip_str, sizeof(ip_str), ip);
				FUNC28(p, "dest_ip", ip_str);
				FUNC27(p, "cookie", current_cookie);
				if (FUNC11(hint_str) == false)
				{
					FUNC28(p, "hint", hint_str);
				}
				if (FUNC11(target_hostname) == false)
				{
					FUNC28(p, "target_hostname", target_hostname);
				}
				FUNC28(p, "svc_name", svc_name);

				FUNC26(p, "nat_traversal_version", UDP_NAT_TRAVERSAL_VERSION);

				b = FUNC34(p);
				FUNC7(p);

				FUNC42(sock, &nat_t_ip, UDP_NAT_T_PORT, b->Buf, b->Size);
				FUNC5(b);

				// Determine the next transmission time
				next_send_request_tick = now + (UINT64)UDP_NAT_T_CONNECT_INTERVAL * (UINT64)(FUNC35(2, FUNC17(num_tries, 6)));
				num_tries++;
				FUNC0(interrupt, next_send_request_tick);
			}

			interval = FUNC9(interrupt);
			interval = FUNC18(interval, 50);

			FUNC45(sock_event, interval);
		}

		FUNC4(tmp);
		FUNC6(interrupt);

		if (*error_code == RUDP_ERROR_OK)
		{
			UINT remain_timeout;
			UINT64 now = FUNC44();
			// Success to get the IP address and the port number of the target

			// Get the rest timeout tolerance
			if (now <= giveup_tick)
			{
				remain_timeout = (UINT)(giveup_tick - now);
			}
			else
			{
				remain_timeout = 0;
			}

			remain_timeout = FUNC17(remain_timeout, 2000);

			if (same_lan)
			{
				// Discard current UDP socket and create a new UDP socket in NewRUDPClientDirect().
				// Because using a UDP socket which used for communication with the NAT-T server
				// can cause trouble when the client and the server exists in the same LAN.
				FUNC40(sock_event);
				FUNC39(sock);

				sock = NULL;
				sock_event = NULL;
			}

			ret = FUNC23(svc_name, &result_ip, result_port, error_code, remain_timeout, cancel,
				sock, sock_event, 0, false);
		}

		if (sock_event != NULL)
		{
			FUNC40(sock_event);
		}

		if (sock != NULL)
		{
			if (ret == NULL)
			{
				FUNC3(sock);
			}

			FUNC39(sock);
		}

		return ret;
	}
}