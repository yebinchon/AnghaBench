#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  NatTable; int /*<<< orphan*/  Now; int /*<<< orphan*/  Counter; } ;
typedef  TYPE_1__ VH ;
typedef  void* UINT ;
struct TYPE_18__ {scalar_t__ SecureNAT_MaxDnsSessionsPerIp; } ;
struct TYPE_17__ {int DisconnectNow; int DnsGetIpFromHost; int /*<<< orphan*/  DnsTargetHostName; int /*<<< orphan*/  LastCommTime; int /*<<< orphan*/  CreatedTime; void* DnsTransactionId; void* DestPort; void* DestIp; void* SrcPort; void* SrcIp; int /*<<< orphan*/  Protocol; int /*<<< orphan*/  lock; TYPE_1__* v; int /*<<< orphan*/  Id; } ;
typedef  TYPE_2__ NAT_ENTRY ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_3__ HUB_OPTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,void*,char*,void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,void*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC6 (TYPE_1__*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  NAT_DNS ; 
 TYPE_3__* FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,void*) ; 
 TYPE_2__* FUNC12 (int) ; 

NAT_ENTRY *FUNC13(VH *v, UINT src_ip, UINT src_port, UINT dest_ip, UINT dest_port,
				  UINT transaction_id, bool dns_get_ip_from_host, char *dns_target_host_name)
{
	NAT_ENTRY *n;
	HUB_OPTION *o;
	// Validate arguments
	if (v == NULL || dns_target_host_name == NULL)
	{
		return NULL;
	}

	if (FUNC1(v) == false)
	{
		return NULL;
	}

	o = FUNC9(v);
	if (o != NULL && o->SecureNAT_MaxDnsSessionsPerIp != 0)
	{
		if (FUNC5(v, src_ip, NAT_DNS, false) >= o->SecureNAT_MaxDnsSessionsPerIp)
		{
			NAT_ENTRY *oldest = FUNC6(v, src_ip, NAT_DNS);

			if (oldest != NULL)
			{
				FUNC4(v, oldest);
			}
		}
	}

	n = FUNC12(sizeof(NAT_ENTRY));
	n->Id = FUNC8(v->Counter);
	n->v = v;
	n->lock = FUNC10();
	n->Protocol = NAT_DNS;
	n->SrcIp = src_ip;
	n->SrcPort = src_port;
	n->DestIp = dest_ip;
	n->DestPort = dest_port;
	n->DnsTransactionId = transaction_id;
	n->CreatedTime = n->LastCommTime = v->Now;
	n->DisconnectNow = false;

	n->DnsGetIpFromHost = false;
	n->DnsTargetHostName = FUNC2(dns_target_host_name);

	FUNC0(v->NatTable, n);

#if	1
	{
		IP ip1, ip2;
		char s1[MAX_SIZE], s2[MAX_SIZE];
		FUNC11(&ip1, src_ip);
		FUNC11(&ip2, dest_ip);
		FUNC7(s1, 0, &ip1);
		FUNC7(s2, 0, &ip2);
		FUNC3("NAT_ENTRY: CreateNatDns %s %u -> %s %u\n", s1, src_port, s2, dest_port);
	}
#endif


	return n;
}