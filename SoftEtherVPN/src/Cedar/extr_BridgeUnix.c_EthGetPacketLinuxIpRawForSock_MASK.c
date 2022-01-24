#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_18__ {scalar_t__ Checksum; } ;
typedef  TYPE_3__ UDP_HEADER ;
typedef  int UCHAR ;
struct TYPE_22__ {int* RawIP_TmpBuffer; int* RawIpYourMacAddr; int* RawIpMyMacAddr; int MyPhysicalIPForce; int MyPhysicalIP; int /*<<< orphan*/  YourIP; int /*<<< orphan*/  RawIP_TmpBufferSize; } ;
struct TYPE_21__ {scalar_t__ Type; scalar_t__ Protocol; void* Checksum; void* SrcIP; void* DstIP; } ;
struct TYPE_17__ {TYPE_6__* ICMPHeader; TYPE_3__* UDPHeader; int /*<<< orphan*/ * TCPHeader; } ;
struct TYPE_16__ {TYPE_6__* IPv4Header; } ;
struct TYPE_20__ {scalar_t__ TypeL3; scalar_t__ TypeL4; int PacketSize; int PayloadSize; scalar_t__ PacketData; TYPE_2__ L4; TYPE_1__ L3; } ;
struct TYPE_19__ {scalar_t__ IgnoreRecvErr; } ;
typedef  int /*<<< orphan*/  TCP_HEADER ;
typedef  TYPE_4__ SOCK ;
typedef  TYPE_5__ PKT ;
typedef  TYPE_6__ IPV4_HEADER ;
typedef  int IP ;
typedef  TYPE_6__ ICMP_HEADER ;
typedef  int /*<<< orphan*/  ICMP_ECHO ;
typedef  TYPE_8__ ETH ;

/* Variables and functions */
 scalar_t__ FUNC0 (int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int FUNC4 (int*,int) ; 
 scalar_t__ ICMP_TYPE_DESTINATION_UNREACHABLE ; 
 scalar_t__ ICMP_TYPE_ECHO_REQUEST ; 
 scalar_t__ ICMP_TYPE_TIME_EXCEEDED ; 
 int INFINITE ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_6__*) ; 
 scalar_t__ IP_PROTO_ICMPV4 ; 
 void* FUNC7 (TYPE_6__*,int) ; 
 scalar_t__ FUNC8 (int*) ; 
 scalar_t__ FUNC9 (int*) ; 
 int FUNC10 (int*) ; 
 int FUNC11 (int*) ; 
 scalar_t__ L3_IPV4 ; 
 scalar_t__ L4_FRAGMENT ; 
 scalar_t__ L4_ICMPV4 ; 
 scalar_t__ L4_TCP ; 
 scalar_t__ L4_UDP ; 
 int* FUNC12 (int) ; 
 TYPE_5__* FUNC13 (int*,int) ; 
 int FUNC14 (TYPE_4__*,int*,int*,int*,int /*<<< orphan*/ ) ; 
 int SOCK_LATER ; 
 int /*<<< orphan*/  FUNC15 (int*,void*) ; 

UINT FUNC16(ETH *e, void **data, SOCK *s, UINT proto)
{
	UCHAR *tmp;
	UINT r;
	IP src_addr;
	UINT src_port;
	UINT ret = INFINITE;
	UCHAR *retbuf;
	PKT *p;
	bool ok = false;
	// Validate arguments
	if (e == NULL || data == NULL)
	{
		return INFINITE;
	}

	tmp = e->RawIP_TmpBuffer;

LABEL_RETRY:
	*data = NULL;

	r = FUNC14(s, &src_addr, &src_port, tmp, e->RawIP_TmpBufferSize);
	if (r == SOCK_LATER)
	{
		return 0;
	}

	if (r == 0)
	{
		if (s->IgnoreRecvErr)
		{
			return 0;
		}
		else
		{
			return INFINITE;
		}
	}

	ret = 14 + r;
	retbuf = FUNC12(ret);
	*data = retbuf;

	FUNC1(retbuf, e->RawIpYourMacAddr, 6);
	FUNC1(retbuf + 6, e->RawIpMyMacAddr, 6);
	retbuf[12] = 0x08;
	retbuf[13] = 0x00;
	FUNC1(retbuf + 14, tmp, r);

	// Mangle packet
	p = FUNC13(retbuf, ret);
	if (p != NULL)
	{
		if (p->TypeL3 == L3_IPV4)
		{
			IPV4_HEADER *ip;
			IP original_dest_ip;

			ip = p->L3.IPv4Header;

			FUNC15(&original_dest_ip, ip->DstIP);

			if (FUNC11(&e->MyPhysicalIPForce) == false && FUNC0(&e->MyPhysicalIPForce, &original_dest_ip) == 0 ||
				(FUNC9(&original_dest_ip) && FUNC10(&original_dest_ip) == false && FUNC8(&original_dest_ip)))
			{
				if (FUNC11(&e->MyPhysicalIPForce) && FUNC0(&e->MyPhysicalIP, &original_dest_ip) != 0)
				{
					// Update MyPhysicalIP
					FUNC1(&e->MyPhysicalIP, &original_dest_ip, sizeof(IP));
//					Debug("e->MyPhysicalIP = %r\n", &e->MyPhysicalIP);
				}

				if (FUNC11(&e->MyPhysicalIPForce) == false)
				{
					FUNC1(&e->MyPhysicalIP, &e->MyPhysicalIPForce, sizeof(IP));
				}

				ip->DstIP = FUNC5(&e->YourIP);
				ip->Checksum = 0;
				ip->Checksum = FUNC7(ip, FUNC6(ip) * 5);

				if (p->TypeL4 == L4_TCP)
				{
					TCP_HEADER *tcp = p->L4.TCPHeader;
/*
					if (Endian16(tcp->SrcPort) == 80)
					{
						IP a, b;
						UINTToIP(&a, ip->SrcIP);
						UINTToIP(&b, ip->DstIP);
						Debug("%r %r %u %u\n", &a, &b, Endian16(tcp->SrcPort), Endian16(tcp->DstPort));
					}*/

					ok = true;
				}
				else if (p->TypeL4 == L4_UDP)
				{
					UDP_HEADER *udp = p->L4.UDPHeader;

					udp->Checksum = 0;

					ok = true;
				}
				else if (p->TypeL4 == L4_ICMPV4)
				{
					ICMP_HEADER *icmp = p->L4.ICMPHeader;

					if (icmp->Type == ICMP_TYPE_DESTINATION_UNREACHABLE || icmp->Type == ICMP_TYPE_TIME_EXCEEDED)
					{
						// Rewrite the Src IP of the IPv4 header of the ICMP response packet
						UINT size = p->PacketSize - ((UCHAR *)icmp - (UCHAR *)p->PacketData);
						UCHAR *data = (UCHAR *)icmp;
						IPV4_HEADER *orig_ipv4 = (IPV4_HEADER *)(((UCHAR *)data) + sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO));
						UINT orig_ipv4_size = size - (sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO));

						UINT orig_ipv4_header_size = FUNC4((UCHAR *)orig_ipv4, orig_ipv4_size);

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

										inner_icmp->Checksum = 0;
										orig_ipv4->SrcIP = FUNC5(&e->YourIP);
										orig_ipv4->Checksum = 0;
										orig_ipv4->Checksum = FUNC7(orig_ipv4, orig_ipv4_header_size);

										// Rewrite the outer ICMP header
										if (true)
										{
											UCHAR *payload;
											UINT payload_size;
											ICMP_ECHO *echo;

											// Echo Response
											echo = (ICMP_ECHO *)(((UCHAR *)data) + sizeof(ICMP_HEADER));

											if (size >= (sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO)))
											{
												payload = ((UCHAR *)data) + sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO);
												payload_size = size - (sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO));

												// Rewrite the header
												icmp->Checksum = 0;
												icmp->Checksum = FUNC7(icmp, size);
											}
										}
									}
								}
							}
						}
					}

					icmp->Checksum = 0;
					icmp->Checksum = FUNC7(icmp, p->PayloadSize);

					ok = true;
				}
				else if (p->TypeL4 == L4_FRAGMENT)
				{
					ok = true;
				}
			}
		}

		FUNC3(p);
	}

	if (ok == false)
	{
		FUNC2(*data);
		*data = NULL;

		goto LABEL_RETRY;
	}

	return ret;
}