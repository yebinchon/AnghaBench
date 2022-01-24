#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hostname ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_5__ {int Flag1; int /*<<< orphan*/  NumQuery; } ;
struct TYPE_4__ {int /*<<< orphan*/  TypeL7; int /*<<< orphan*/  DnsQueryHost; } ;
typedef  TYPE_1__ PKT ;
typedef  TYPE_2__ DNSV4_HEADER ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  L7_DNS ; 
 int MAX_SIZE ; 
 int FUNC1 (char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 

void FUNC3(PKT *p, UCHAR *buf, UINT size)
{
	UCHAR *query_data;
	UINT query_data_size;
	DNSV4_HEADER *dns;
	char hostname[MAX_SIZE];
	if (p == NULL|| buf == NULL)
	{
		return;
	}

	if (size < sizeof(DNSV4_HEADER))
	{
		return;
	}

	dns = (DNSV4_HEADER *)buf;

	if ((dns->Flag1 & 78) != 0 || (dns->Flag1 & 0x80) != 0)
	{
		// Illegal opcode
		return;
	}
	if (FUNC0(dns->NumQuery) != 1)
	{
		// Number of queries is invalid
		return;
	}

	query_data = ((UCHAR *)dns) + sizeof(DNSV4_HEADER);
	query_data_size = size - sizeof(DNSV4_HEADER);

	// Interpret the query
	if (FUNC1(hostname, sizeof(hostname), query_data, query_data_size) == false)
	{
		// Interpretation fails
		return;
	}

	FUNC2(p->DnsQueryHost, sizeof(p->DnsQueryHost), hostname);
	p->TypeL7 = L7_DNS;
}