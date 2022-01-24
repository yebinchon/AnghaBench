#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_10__ {int /*<<< orphan*/  SockEvent; } ;
typedef  TYPE_1__ VH ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_11__ {int ProxyDns; int /*<<< orphan*/  UdpSendQueue; int /*<<< orphan*/  DestIpProxy; } ;
typedef  TYPE_2__ NAT_ENTRY ;
typedef  int /*<<< orphan*/  IP ;
typedef  int /*<<< orphan*/  BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NAT_UDP ; 
 int /*<<< orphan*/ * FUNC8 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

void FUNC12(VH *v, UINT src_ip, UINT src_port, UINT dest_ip, UINT dest_port, void *data, UINT size, bool dns_proxy)
{
	NAT_ENTRY *n, t;
	BLOCK *block;
	void *buf;
	UINT dns_ip = 0;
	// Validate arguments
	if (data == NULL || v == NULL)
	{
		return;
	}

	if (dns_proxy)
	{
		// Get the DNS server of the proxy to connect to
		IP ip;
		char tmp[MAX_SIZE];
		if (FUNC3(&ip) == false)
		{
			// Failure
			FUNC2("Failed to GetDefaultDns()\n");
			return;
		}
		dns_ip = FUNC5(&ip);
		FUNC4(tmp, sizeof(tmp), &ip);
		FUNC2("Redirect to DNS Server %s\n", tmp);
	}

	// Examine whether the NAT entry for this packet has already been created
	FUNC10(&t, NAT_UDP, src_ip, src_port, dest_ip, dest_port, 0, 0);
	n = FUNC9(v, &t);

	if (n == NULL)
	{
		// Create a NAT entry because it is the first packet
		n = FUNC1(v, src_ip, src_port, dest_ip, dest_port, dns_proxy ? dns_ip : 0);
		if (n == NULL)
		{
			// Entry creation failed
			return;
		}

		if (dns_proxy)
		{
			n->ProxyDns = true;
			n->DestIpProxy = dns_ip;
		}
	}

	// Set the event by inserting the packet into the queue
	buf = FUNC7(size);
	FUNC0(buf, data, size);
	block = FUNC8(buf, size, 0);
	FUNC6(n->UdpSendQueue, block);

	FUNC11(v->SockEvent);
}