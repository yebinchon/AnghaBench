#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  opcode ;
typedef  scalar_t__ UCHAR ;
struct TYPE_11__ {int NumExistingRoutes; } ;
struct TYPE_10__ {int Size; scalar_t__* Buf; } ;
struct TYPE_9__ {scalar_t__ ServerAddress; scalar_t__ LeaseTime; scalar_t__* DomainName; scalar_t__ SubnetMask; scalar_t__ Gateway; TYPE_7__ ClasslessRoute; int /*<<< orphan*/  DnsServer2; int /*<<< orphan*/  DnsServer; scalar_t__ Opcode; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ DHCP_OPTION_LIST ;
typedef  TYPE_2__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DHCP_ID_CLASSLESS_ROUTE ; 
 int /*<<< orphan*/  DHCP_ID_DNS_ADDR ; 
 int /*<<< orphan*/  DHCP_ID_DOMAIN_NAME ; 
 int /*<<< orphan*/  DHCP_ID_GATEWAY_ADDR ; 
 int /*<<< orphan*/  DHCP_ID_LEASE_TIME ; 
 int /*<<< orphan*/  DHCP_ID_MESSAGE_TYPE ; 
 int /*<<< orphan*/  DHCP_ID_MS_CLASSLESS_ROUTE ; 
 int /*<<< orphan*/  DHCP_ID_SERVER_ADDRESS ; 
 int /*<<< orphan*/  DHCP_ID_SUBNET_MASK ; 
 TYPE_2__* FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 

LIST *FUNC8(DHCP_OPTION_LIST *opt)
{
	LIST *o;
	UCHAR opcode;
	BUF *dns_buf;
	// Validate arguments
	if (opt == NULL)
	{
		return NULL;
	}

	o = FUNC5(NULL);

	// Op-code
	opcode = (UCHAR)opt->Opcode;
	FUNC0(o, FUNC4(DHCP_ID_MESSAGE_TYPE, &opcode, sizeof(opcode)));
	FUNC0(o, FUNC4(DHCP_ID_SERVER_ADDRESS, &opt->ServerAddress, sizeof(opt->ServerAddress)));

	if (opt->LeaseTime != 0)
	{
		FUNC0(o, FUNC4(DHCP_ID_LEASE_TIME, &opt->LeaseTime, sizeof(opt->LeaseTime)));
	}

	if (FUNC6(opt->DomainName) != 0 && opt->DnsServer != 0)
	{
		FUNC0(o, FUNC4(DHCP_ID_DOMAIN_NAME, opt->DomainName, FUNC6(opt->DomainName)));
	}
	if (opt->SubnetMask != 0)
	{
		FUNC0(o, FUNC4(DHCP_ID_SUBNET_MASK, &opt->SubnetMask, sizeof(opt->SubnetMask)));
	}
	if (opt->Gateway != 0)
	{
		FUNC0(o, FUNC4(DHCP_ID_GATEWAY_ADDR, &opt->Gateway, sizeof(opt->Gateway)));
	}

	dns_buf = FUNC3();

	if (opt->DnsServer != 0)
	{
		FUNC7(dns_buf, &opt->DnsServer, sizeof(opt->DnsServer));
	}
	if (opt->DnsServer2 != 0)
	{
		FUNC7(dns_buf, &opt->DnsServer2, sizeof(opt->DnsServer2));
	}

	if (dns_buf->Size >= 1)
	{
		FUNC0(o, FUNC4(DHCP_ID_DNS_ADDR, dns_buf->Buf, dns_buf->Size));
	}

	FUNC2(dns_buf);

	if (opt->ClasslessRoute.NumExistingRoutes >= 1)
	{
		BUF *b = FUNC1(&opt->ClasslessRoute);

		if (b != NULL)
		{
			FUNC0(o, FUNC4(DHCP_ID_CLASSLESS_ROUTE, b->Buf, b->Size));
			FUNC0(o, FUNC4(DHCP_ID_MS_CLASSLESS_ROUTE, b->Buf, b->Size));

			FUNC2(b);
		}
	}

	return o;
}