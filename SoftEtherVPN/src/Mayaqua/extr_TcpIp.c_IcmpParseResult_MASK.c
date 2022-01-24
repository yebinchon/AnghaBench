#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ USHORT ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_12__ {scalar_t__ Identifier; scalar_t__ SeqNo; } ;
struct TYPE_11__ {scalar_t__ Checksum; scalar_t__ Type; int /*<<< orphan*/  Code; } ;
struct TYPE_10__ {int Ok; scalar_t__ Type; int /*<<< orphan*/  IpAddress; scalar_t__ DataSize; void* Data; int /*<<< orphan*/  Ttl; int /*<<< orphan*/  Code; } ;
struct TYPE_9__ {scalar_t__ Protocol; scalar_t__ TotalLength; int /*<<< orphan*/  TimeToLive; int /*<<< orphan*/  SrcIP; } ;
typedef  TYPE_1__ IPV4_HEADER ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_2__ ICMP_RESULT ;
typedef  TYPE_3__ ICMP_HEADER ;
typedef  TYPE_4__ ICMP_ECHO ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ ICMP_TYPE_ECHO_REQUEST ; 
 scalar_t__ ICMP_TYPE_ECHO_RESPONSE ; 
 int FUNC4 (TYPE_1__*) ; 
 scalar_t__ IP_PROTO_ICMPV4 ; 
 scalar_t__ FUNC5 (TYPE_3__*,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (int) ; 

ICMP_RESULT *FUNC9(IP *dest_ip, USHORT src_id, USHORT src_seqno, UCHAR *recv_buffer, UINT recv_buffer_size)
{
	ICMP_RESULT *ret = NULL;
	UINT i;
	// Validate arguments
	if (dest_ip == NULL || FUNC6(dest_ip) == false || recv_buffer == NULL || recv_buffer_size == 0)
	{
		return NULL;
	}

	i = recv_buffer_size;

	if (true)
	{
		UINT ip_header_size = FUNC3(recv_buffer, i);
		if (ip_header_size >= sizeof(IPV4_HEADER) && (ip_header_size <= i))
		{
			IPV4_HEADER *ipv4 = (IPV4_HEADER *)recv_buffer;
			if ((FUNC4(ipv4) == 4) && (ipv4->Protocol == IP_PROTO_ICMPV4))
			{
				UINT ip_total_len = (UINT)FUNC2(ipv4->TotalLength);

				if ((ip_total_len >= sizeof(IPV4_HEADER)) && (ip_total_len <= i) && (ip_total_len >= ip_header_size))
				{
					UINT icmp_packet_size = ip_total_len - ip_header_size;
					ICMP_HEADER *icmp = (ICMP_HEADER *)(recv_buffer + ip_header_size);

					if (icmp_packet_size >= sizeof(ICMP_HEADER))
					{
						USHORT chksum = icmp->Checksum;
						USHORT chksum2;
						icmp->Checksum = 0;

						chksum2 = FUNC5(icmp, icmp_packet_size);

						if (chksum2 == chksum)
						{
							if (icmp->Type == ICMP_TYPE_ECHO_RESPONSE)
							{
								ICMP_ECHO *echo = (ICMP_ECHO *)(recv_buffer + ip_header_size + sizeof(ICMP_HEADER));
								if (icmp_packet_size >= (sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO)))
								{
									if (FUNC2(echo->Identifier) == src_id && (src_seqno == 0 || FUNC2(echo->SeqNo) == src_seqno))
									{
										IP ip;

										FUNC7(&ip, ipv4->SrcIP);

										// Received the correct Echo response
										ret = FUNC8(sizeof(ICMP_RESULT));

										ret->Ok = true;
										ret->Ttl = ipv4->TimeToLive;
										ret->DataSize = icmp_packet_size - (sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO));
										ret->Data = FUNC0(recv_buffer + ip_header_size + sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO),
											ret->DataSize);
										FUNC1(&ret->IpAddress, &ip, sizeof(IP));
									}
								}
							}
							else if (icmp->Type == ICMP_TYPE_ECHO_REQUEST)
							{
								// Ignore because an Echo request should not arrive
							}
							else
							{
								// If an error is returned, compare to the copy of
								// the ICMP packet last sent
								IPV4_HEADER *orig_ipv4 = (IPV4_HEADER *)(recv_buffer + ip_header_size + 4 + sizeof(ICMP_HEADER));
								if (icmp_packet_size >= (sizeof(ICMP_HEADER) + 4 + sizeof(IPV4_HEADER)))
								{
									UINT orig_ipv4_header_size = FUNC3((UCHAR *)orig_ipv4, icmp_packet_size - 4 - sizeof(ICMP_HEADER));
									if (orig_ipv4_header_size >= sizeof(IPV4_HEADER))
									{
										if ((FUNC4(orig_ipv4) == 4) && (orig_ipv4->Protocol == IP_PROTO_ICMPV4))
										{
											if (icmp_packet_size >= (sizeof(ICMP_HEADER) + 4 + orig_ipv4_header_size + sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO)))
											{
												ICMP_HEADER *orig_icmp = (ICMP_HEADER *)(recv_buffer + ip_header_size + sizeof(ICMP_HEADER) + 4 + orig_ipv4_header_size);
												ICMP_ECHO *orig_echo = (ICMP_ECHO *)(recv_buffer + ip_header_size + sizeof(ICMP_HEADER) + 4 + orig_ipv4_header_size + sizeof(ICMP_HEADER));

												if (orig_icmp->Type == ICMP_TYPE_ECHO_REQUEST && orig_echo->Identifier == FUNC2(src_id) && (src_seqno == 0 || orig_echo->SeqNo == FUNC2(src_seqno)))
												{
													IP ip;

													FUNC7(&ip, ipv4->SrcIP);

													ret = FUNC8(sizeof(ICMP_RESULT));

													ret->Type = icmp->Type;
													ret->Code = icmp->Code;
													ret->Ttl = ipv4->TimeToLive;
													ret->DataSize = icmp_packet_size - (sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO));
													ret->Data = FUNC0(recv_buffer + ip_header_size + sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO),
														ret->DataSize);
													FUNC1(&ret->IpAddress, &ip, sizeof(IP));
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
		}
	}

	return ret;
}