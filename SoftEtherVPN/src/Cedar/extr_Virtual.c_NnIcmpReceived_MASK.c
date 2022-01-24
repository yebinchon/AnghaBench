#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT64 ;
typedef  int UINT ;
typedef  int UCHAR ;
struct TYPE_21__ {int /*<<< orphan*/  Now; } ;
struct TYPE_20__ {void* Identifier; int /*<<< orphan*/  SeqNo; } ;
struct TYPE_19__ {scalar_t__ Type; scalar_t__ Protocol; int SrcIP; void* Checksum; int /*<<< orphan*/  Code; } ;
struct TYPE_18__ {int PublicIP; TYPE_7__* v; int /*<<< orphan*/  NatTableForRecv; } ;
struct TYPE_17__ {int SrcIp; void* SrcPort; int /*<<< orphan*/  LastCommTime; int /*<<< orphan*/  TotalRecv; } ;
typedef  TYPE_1__ NATIVE_NAT_ENTRY ;
typedef  TYPE_2__ NATIVE_NAT ;
typedef  TYPE_3__ IPV4_HEADER ;
typedef  TYPE_3__ ICMP_HEADER ;
typedef  TYPE_5__ ICMP_ECHO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (int*,int) ; 
 scalar_t__ ICMP_TYPE_DESTINATION_UNREACHABLE ; 
 scalar_t__ ICMP_TYPE_ECHO_REQUEST ; 
 scalar_t__ ICMP_TYPE_ECHO_RESPONSE ; 
 scalar_t__ ICMP_TYPE_TIME_EXCEEDED ; 
 scalar_t__ IP_PROTO_ICMPV4 ; 
 void* FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  NAT_ICMP ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int,int,TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*,int,int,scalar_t__,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC10 (int) ; 

void FUNC11(NATIVE_NAT *t, UINT src_ip, UINT dest_ip, void *data, UINT size, UCHAR ttl, UINT max_l3_size)
{
	ICMP_HEADER *icmp;
	// Validate arguments
	if (t == NULL || data == NULL)
	{
		return;
	}
	if (ttl == 0)
	{
		ttl = 1;
	}

	// ICMP header
	if (size < sizeof(ICMP_HEADER))
	{
		return;
	}

	icmp = (ICMP_HEADER *)data;

	if (icmp->Type == ICMP_TYPE_ECHO_RESPONSE)
	{
		UCHAR *payload;
		UINT payload_size;
		ICMP_ECHO *echo;
		NATIVE_NAT_ENTRY tt, *e;

		// Echo Response
		echo = (ICMP_ECHO *)(((UCHAR *)data) + sizeof(ICMP_HEADER));

		if (size < (sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO)))
		{
			return;
		}

		payload = ((UCHAR *)data) + sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO);
		payload_size = size - (sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO));

		// Search the NAT
		FUNC7(&tt, NAT_ICMP, 0, 0, 0, 0, dest_ip, FUNC1(echo->Identifier));

		e = FUNC8(t->NatTableForRecv, &tt);

		if (e != NULL)
		{
			// Rewrite the header
			icmp->Checksum = 0;
			echo->Identifier = FUNC1(e->SrcPort);
			icmp->Checksum = FUNC4(icmp, size);

			e->LastCommTime = t->v->Now;
			e->TotalRecv += (UINT64)size;

			// Transmission
			FUNC9(t->v, e->SrcIp, src_ip, IP_PROTO_ICMPV4, icmp, size, FUNC5(ttl - 1, 1));
		}
	}
	else if (icmp->Type == ICMP_TYPE_ECHO_REQUEST)
	{
		UCHAR *payload;
		UINT payload_size;
		ICMP_ECHO *echo;

		// Echo Response
		echo = (ICMP_ECHO *)(((UCHAR *)data) + sizeof(ICMP_HEADER));

		if (size < (sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO)))
		{
			return;
		}

		payload = ((UCHAR *)data) + sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO);
		payload_size = size - (sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO));

		if (dest_ip == t->PublicIP)
		{
			// Respond as soon as the Echo Request is received at the public side interface
			ICMP_HEADER *ret_icmp;
			ICMP_ECHO *ret_echo;
			UINT ret_size = sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO) + payload_size;

			ret_icmp = FUNC10(ret_size);
			ret_echo = (ICMP_ECHO *)(((UCHAR *)ret_icmp) + sizeof(ICMP_HEADER));

			ret_icmp->Type = ICMP_TYPE_ECHO_RESPONSE;
			ret_icmp->Code = icmp->Code;

			ret_echo->Identifier = echo->Identifier;
			ret_echo->SeqNo = echo->SeqNo;

			FUNC0((UCHAR *)ret_icmp + sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO),
				payload, payload_size);

			ret_icmp->Checksum = FUNC4(ret_icmp, ret_size);

			FUNC6(t, IP_PROTO_ICMPV4, 0, dest_ip, src_ip, ret_icmp, ret_size, max_l3_size);

			FUNC2(ret_icmp);
		}
	}
	else
	{
		if (icmp->Type == ICMP_TYPE_DESTINATION_UNREACHABLE || icmp->Type == ICMP_TYPE_TIME_EXCEEDED)
		{
			// Rewrite the Src IP of the IPv4 header of the ICMP response packet
			if (size >= (sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO) + sizeof(IPV4_HEADER)))
			{
				IPV4_HEADER *orig_ipv4 = (IPV4_HEADER *)(((UCHAR *)data) + sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO));
				UINT orig_ipv4_size = size - (sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO));

				UINT orig_ipv4_header_size = FUNC3((UCHAR *)orig_ipv4, orig_ipv4_size);

				if (orig_ipv4_header_size >= sizeof(IPV4_HEADER) && orig_ipv4_size >= orig_ipv4_header_size)
				{
					if (orig_ipv4->Protocol == IP_PROTO_ICMPV4)
					{
						// Search the inner ICMP header
						UINT inner_icmp_size = orig_ipv4_size - orig_ipv4_header_size;

						if (inner_icmp_size >= (sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO)))
						{
							ICMP_HEADER *inner_icmp = (ICMP_HEADER *)(((UCHAR *)data) +
								sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO) + orig_ipv4_header_size);

							if (inner_icmp->Type == ICMP_TYPE_ECHO_REQUEST)
							{
								ICMP_ECHO *inner_echo = (ICMP_ECHO *)(((UCHAR *)inner_icmp) + sizeof(ICMP_HEADER));
								NATIVE_NAT_ENTRY tt, *e;

								// Search for the existing NAT table entry
								FUNC7(&tt, NAT_ICMP, 0, 0, 0, 0, orig_ipv4->SrcIP, FUNC1(inner_echo->Identifier));

								e = FUNC8(t->NatTableForRecv, &tt);

								if (e != NULL)
								{
									e->LastCommTime = t->v->Now;

									// Rewrite the inner IP packet and the ICMP header according to the NAT table
									inner_echo->Identifier = FUNC1(e->SrcPort);
									inner_icmp->Checksum = 0;

									orig_ipv4->SrcIP = e->SrcIp;

									orig_ipv4->Checksum = 0;
									orig_ipv4->Checksum = FUNC4(orig_ipv4, orig_ipv4_header_size);

									// Rewrite the outer ICMP header
									if (true)
									{
										UCHAR *payload;
										UINT payload_size;
										ICMP_ECHO *echo;

										// Echo Response
										echo = (ICMP_ECHO *)(((UCHAR *)data) + sizeof(ICMP_HEADER));

										if (size < (sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO)))
										{
											return;
										}

										payload = ((UCHAR *)data) + sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO);
										payload_size = size - (sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO));

										// Rewrite the header
										icmp->Checksum = 0;
										echo->Identifier = FUNC1(e->SrcPort);
										icmp->Checksum = FUNC4(icmp, size);

										// Transmission
										FUNC9(t->v, e->SrcIp, src_ip, IP_PROTO_ICMPV4, icmp, size, FUNC5(ttl - 1, 1));
									}
								}
							}
						}
					}
				}
			}
		}
	}
}