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
typedef  int USHORT ;
typedef  int UINT ;
struct TYPE_6__ {int Size; int* Buf; } ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  NAT_DNS_RESPONSE_TTL ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int*,int) ; 

void FUNC5(BUF *b, char *hostname)
{
	USHORT magic;
	USHORT type, clas;
	UINT ttl;
	USHORT len;
	BUF *c;
	// Validate arguments
	if (b == NULL || hostname == NULL)
	{
		return;
	}

	magic = FUNC1(0xc00c);
	type = FUNC1(0x000c);
	clas = FUNC1(0x0001);
	ttl = FUNC2(NAT_DNS_RESPONSE_TTL);

	c = FUNC0(hostname);
	if (c == NULL)
	{
		return;
	}
	len = FUNC1((USHORT)c->Size);

	FUNC4(b, &magic, 2);
	FUNC4(b, &type, 2);
	FUNC4(b, &clas, 2);
	FUNC4(b, &ttl, 4);
	FUNC4(b, &len, 2);
	FUNC4(b, c->Buf, c->Size);
	FUNC3(c);
}