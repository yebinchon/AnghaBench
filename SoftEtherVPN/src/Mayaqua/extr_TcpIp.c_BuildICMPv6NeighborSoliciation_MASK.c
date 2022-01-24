#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  opt ;
typedef  int /*<<< orphan*/  link ;
typedef  int /*<<< orphan*/  header ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_17__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_16__ {int /*<<< orphan*/  TargetAddress; struct TYPE_16__* SourceLinkLayer; int /*<<< orphan*/ * Address; } ;
typedef  int /*<<< orphan*/  IPV6_ADDR ;
typedef  TYPE_1__ ICMPV6_OPTION_LIST ;
typedef  TYPE_1__ ICMPV6_OPTION_LINK_LAYER ;
typedef  TYPE_1__ ICMPV6_NEIGHBOR_SOLICIATION_HEADER ;
typedef  TYPE_4__ BUF ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  ICMPV6_TYPE_NEIGHBOR_SOLICIATION ; 
 TYPE_4__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 

BUF *FUNC8(IPV6_ADDR *src_ip, IPV6_ADDR *target_ip, UCHAR *my_mac_address, UINT id)
{
	ICMPV6_OPTION_LIST opt;
	ICMPV6_OPTION_LINK_LAYER link;
	ICMPV6_NEIGHBOR_SOLICIATION_HEADER header;
	BUF *b;
	BUF *b2;
	BUF *ret;
	// Validate arguments
	if (src_ip == NULL || target_ip == NULL || my_mac_address == NULL)
	{
		return NULL;
	}

	FUNC7(&link, sizeof(link));
	FUNC2(link.Address, my_mac_address, 6);

	FUNC7(&opt, sizeof(opt));
	opt.SourceLinkLayer = &link;

	b = FUNC1(&opt);

	FUNC7(&header, sizeof(header));
	FUNC2(&header.TargetAddress, target_ip, sizeof(IPV6_ADDR));

	b2 = FUNC4();

	FUNC5(b2, &header, sizeof(header));
	FUNC6(b2, b);

	ret = FUNC0(src_ip, target_ip, 255,
		ICMPV6_TYPE_NEIGHBOR_SOLICIATION, 0, b2->Buf, b2->Size, id);

	FUNC3(b);
	FUNC3(b2);

	return ret;
}