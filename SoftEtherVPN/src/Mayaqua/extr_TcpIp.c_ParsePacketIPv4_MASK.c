#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_12__ {int Protocol; int /*<<< orphan*/  TotalLength; } ;
struct TYPE_10__ {TYPE_3__* IPv4Header; } ;
struct TYPE_11__ {TYPE_1__ L3; int /*<<< orphan*/  TypeL4; int /*<<< orphan*/ * IPv4PayloadData; int /*<<< orphan*/  IPv4PayloadSize; int /*<<< orphan*/  TypeL3; } ;
typedef  TYPE_2__ PKT ;
typedef  TYPE_3__ IPV4_HEADER ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
#define  IP_PROTO_ICMPV4 130 
#define  IP_PROTO_TCP 129 
#define  IP_PROTO_UDP 128 
 int /*<<< orphan*/  L3_IPV4 ; 
 int /*<<< orphan*/  L3_UNKNOWN ; 
 int /*<<< orphan*/  L4_FRAGMENT ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 

bool FUNC7(PKT *p, UCHAR *buf, UINT size)
{
	UINT header_size;
	// Validate arguments
	if (p == NULL || buf == NULL)
	{
		return false;
	}

	// Check the size
	if (size < sizeof(IPV4_HEADER))
	{
		return false;
	}

	// IPv4 header
	p->L3.IPv4Header = (IPV4_HEADER *)buf;
	p->TypeL3 = L3_IPV4;

	// Check the header
	header_size = FUNC1(p->L3.IPv4Header) * 4;
	if (header_size < sizeof(IPV4_HEADER) || size < header_size)
	{
		// Header size is invalid
		p->L3.IPv4Header = NULL;
		p->TypeL3= L3_UNKNOWN;
		return true;
	}

	buf += header_size;
	size -= header_size;

	p->IPv4PayloadSize = FUNC3(size, FUNC0(p->L3.IPv4Header->TotalLength) - header_size);
	if (FUNC0(p->L3.IPv4Header->TotalLength) < header_size)
	{
		p->IPv4PayloadSize = 0;
	}

	p->IPv4PayloadData = buf;

	if (FUNC2(p->L3.IPv4Header) != 0)
	{
		// Quit analysing since this is fragmented
		p->TypeL4 = L4_FRAGMENT;

		return true;
	}

	// Parse a L4 packet
	switch (p->L3.IPv4Header->Protocol)
	{
	case IP_PROTO_ICMPV4:	// ICMPv4
		return FUNC4(p, buf, size);

	case IP_PROTO_UDP:		// UDP
		return FUNC6(p, buf, size);

	case IP_PROTO_TCP:		// TCP
		return FUNC5(p, buf, size);

	default:				// Unknown
		return true;
	}
}