#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  type ;
typedef  int /*<<< orphan*/  ttl ;
typedef  int /*<<< orphan*/  magic ;
typedef  int /*<<< orphan*/  len ;
typedef  int /*<<< orphan*/  ip_addr ;
typedef  int /*<<< orphan*/  clas ;
typedef  int USHORT ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  IP ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NAT_DNS_RESPONSE_TTL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int) ; 

void FUNC4(BUF *b, IP *ip)
{
	UINT ip_addr;
	USHORT magic;
	USHORT type, clas;
	UINT ttl;
	USHORT len;
	// Validate arguments
	if (b == NULL || ip == NULL)
	{
		return;
	}

	ip_addr = FUNC2(ip);
	magic = FUNC0(0xc00c);
	type = FUNC0(0x0001);
	clas = FUNC0(0x0001);
	ttl = FUNC1(NAT_DNS_RESPONSE_TTL);
	len = FUNC0((USHORT)sizeof(ttl));

	FUNC3(b, &magic, sizeof(magic));
	FUNC3(b, &type, sizeof(type));
	FUNC3(b, &clas, sizeof(clas));
	FUNC3(b, &ttl, sizeof(ttl));
	FUNC3(b, &len, sizeof(len));
	FUNC3(b, &ip_addr, sizeof(ip_addr));
}