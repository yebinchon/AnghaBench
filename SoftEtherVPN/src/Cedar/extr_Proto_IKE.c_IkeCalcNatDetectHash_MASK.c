#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  USHORT ;
typedef  int /*<<< orphan*/  UINT64 ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_16__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_15__ {int /*<<< orphan*/  HashSize; } ;
struct TYPE_14__ {int /*<<< orphan*/ * addr; int /*<<< orphan*/ * ipv6_addr; } ;
typedef  TYPE_1__ IP ;
typedef  int /*<<< orphan*/  IKE_SERVER ;
typedef  TYPE_2__ IKE_HASH ;
typedef  TYPE_3__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int IKE_MAX_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 

BUF *FUNC8(IKE_SERVER *ike, IKE_HASH *hash, UINT64 initiator_cookie, UINT64 responder_cookie, IP *ip, UINT port)
{
	BUF *b;
	USHORT us;
	USHORT hash_data[IKE_MAX_HASH_SIZE];
	// Validate arguments
	if (ike == NULL || ip == NULL || hash == NULL)
	{
		return FUNC5();
	}

	b = FUNC5();

	FUNC7(b, initiator_cookie);
	FUNC7(b, responder_cookie);

	if (FUNC3(ip))
	{
		FUNC6(b, ip->ipv6_addr, sizeof(ip->ipv6_addr));
	}
	else
	{
		FUNC6(b, ip->addr, sizeof(ip->addr));
	}

	us = FUNC0((USHORT)port);

	FUNC6(b, &us, sizeof(USHORT));

	FUNC2(hash, hash_data, b->Buf, b->Size);

	FUNC1(b);

	return FUNC4(hash_data, hash->HashSize);
}