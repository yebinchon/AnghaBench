#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  p ;
typedef  int /*<<< orphan*/  n ;
typedef  int /*<<< orphan*/  VH ;
typedef  scalar_t__ UINT ;
struct TYPE_6__ {int DnsGetIpFromHost; int DnsOk; scalar_t__ SrcPort; scalar_t__ DestPort; scalar_t__ SrcIp; scalar_t__ DestIp; int /*<<< orphan*/  TransactionId; int /*<<< orphan*/  DnsTransactionId; int /*<<< orphan*/  DnsResponseHostName; int /*<<< orphan*/  Hostname; int /*<<< orphan*/  DnsTargetHostName; } ;
typedef  TYPE_1__ NAT_ENTRY ;
typedef  TYPE_1__ DNS_PARSED_PACKET ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,void*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,void*,scalar_t__,TYPE_1__*) ; 
 scalar_t__ SPECIAL_UDP_PORT_LLMNR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,void*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  v_vgs_hostname ; 

void FUNC7(VH *v, UINT src_ip, UINT src_port, UINT dest_ip, UINT dest_port, void *data, UINT size)
{
	// Validate arguments
	if (v == NULL || data == NULL || size == 0)
	{
		return;
	}

	if (dest_port == SPECIAL_UDP_PORT_LLMNR)
	{
		// Process by analyzing the DNS query in the case of LLMNR
		FUNC1(v, src_ip, src_port, dest_ip, dest_port, data, size);
	}
	else
	{
		// Forward the packet as it is in the case of a normal DNS packet
		if (FUNC0(v_vgs_hostname) == false)
		{
			// Response by proxy in the case of trying to get the IP of the VGS
			DNS_PARSED_PACKET p;

			FUNC6(&p, sizeof(p));
			if (FUNC2(v, src_ip, src_port, dest_ip, dest_port, data, size, &p))
			{
				if (FUNC4(p.Hostname, "254.254.211.10.in-addr.arpa") == 0)
				{
					NAT_ENTRY n;

					FUNC6(&n, sizeof(n));
					n.DnsTargetHostName = p.Hostname;
					n.DnsGetIpFromHost = true;
					n.DnsResponseHostName = v_vgs_hostname;
					n.DnsTransactionId = p.TransactionId;
					n.DnsOk = true;
					n.DestIp = dest_ip;
					n.SrcIp = src_ip;
					n.DestPort = dest_port;
					n.SrcPort = src_port;

					FUNC3(v, &n);
					return;
				}
			}
		}

		FUNC5(v, src_ip, src_port, dest_ip, dest_port, data, size, true);
	}
}