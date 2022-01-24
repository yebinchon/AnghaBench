#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_18__ {scalar_t__ Checksum; } ;
typedef  TYPE_4__ UDP_HEADER ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_20__ {void* Buf; scalar_t__ Size; } ;
struct TYPE_17__ {TYPE_2__* IPv4Header; } ;
struct TYPE_15__ {TYPE_4__* UDPHeader; } ;
struct TYPE_19__ {scalar_t__ TypeL3; scalar_t__ TypeL4; scalar_t__ TypeL7; scalar_t__ PayloadSize; void* PacketData; scalar_t__ PacketSize; TYPE_3__ L3; TYPE_1__ L4; int /*<<< orphan*/  Payload; } ;
struct TYPE_16__ {int /*<<< orphan*/  DstIP; int /*<<< orphan*/  SrcIP; } ;
typedef  TYPE_5__ PKT ;
typedef  int /*<<< orphan*/  DHCP_MODIFY_OPTION ;
typedef  TYPE_6__ BUF ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  IP_PROTO_UDP ; 
 scalar_t__ L3_IPV4 ; 
 scalar_t__ L4_UDP ; 
 scalar_t__ L7_DHCPV4 ; 
 TYPE_6__* FUNC4 () ; 
 TYPE_5__* FUNC5 (void*,scalar_t__,int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,void*,scalar_t__) ; 

BUF *FUNC7(DHCP_MODIFY_OPTION *m, void *data, UINT size)
{
	PKT *p;
	BUF *ret = NULL;
	// Validate arguments
	if (m == NULL || data == NULL || size == 0)
	{
		return NULL;
	}

	p = FUNC5(data, size, false, 0, false, false, false);

	if (p != NULL && p->TypeL3 == L3_IPV4 && p->TypeL4 == L4_UDP && p->TypeL7 == L7_DHCPV4)
	{
		BUF *new_buf = FUNC1(m, p->Payload, p->PayloadSize);

		if (new_buf != NULL)
		{
			ret = FUNC4();

			FUNC6(ret, p->PacketData, p->PacketSize - p->PayloadSize);
			FUNC6(ret, new_buf->Buf, new_buf->Size);

			FUNC2(new_buf);
		}
	}

	FUNC3(p);

	if (ret != NULL)
	{
		PKT *p = FUNC5(ret->Buf, ret->Size, false, 0, false, false, false);

		if (p != NULL)
		{
			// Recalculation of the UDP checksum
			if (p->TypeL3 == L3_IPV4 && p->TypeL4 == L4_UDP)
			{
				UDP_HEADER *udp = p->L4.UDPHeader;

				udp->Checksum = 0;
				udp->Checksum = FUNC0(p->L3.IPv4Header->SrcIP,
					p->L3.IPv4Header->DstIP,
					IP_PROTO_UDP,
					udp,
					p->PacketSize - (UINT)(((UCHAR *)udp) - ((UCHAR *)p->PacketData)), 0);
			}

			FUNC3(p);
		}
	}

	return ret;
}