#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ip6 ;
typedef  int /*<<< orphan*/  ip4 ;
typedef  int /*<<< orphan*/  ip ;
typedef  int /*<<< orphan*/  h ;
struct TYPE_11__ {int IdType; } ;
typedef  TYPE_1__ UCHAR ;
struct TYPE_12__ {int /*<<< orphan*/  IpAddress; } ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_2__ IKE_PACKET_NAT_OA_PAYLOAD ;
typedef  TYPE_1__ IKE_NAT_OA_HEADER ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
#define  IKE_ID_IPV4_ADDR 129 
#define  IKE_ID_IPV6_ADDR 128 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

bool FUNC5(IKE_PACKET_NAT_OA_PAYLOAD *t, BUF *b)
{
	IKE_NAT_OA_HEADER h;
	UCHAR ip4[4];
	UCHAR ip6[16];
	IP ip;
	// Validate arguments
	if (t == NULL || b == NULL)
	{
		return false;
	}

	FUNC4(&ip, sizeof(ip));

	if (FUNC1(b, &h, sizeof(h)) != sizeof(h))
	{
		return false;
	}

	if (h.IdType != IKE_ID_IPV4_ADDR && h.IdType != IKE_ID_IPV6_ADDR)
	{
		return false;
	}

	switch (h.IdType)
	{
	case IKE_ID_IPV4_ADDR:	// IPv4
		if (FUNC1(b, ip4, sizeof(ip4)) != sizeof(ip4))
		{
			return false;
		}

		FUNC2(&ip, ip4[0], ip4[1], ip4[2], ip4[3]);

		break;

	case IKE_ID_IPV6_ADDR:	// IPv6
		if (FUNC1(b, ip6, sizeof(ip6)) != sizeof(ip6))
		{
			return false;
		}

		FUNC3(&ip, ip6);

		break;

	default:
		return false;
	}

	FUNC0(&t->IpAddress, &ip, sizeof(IP));

	return true;
}