#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rand_seed ;
struct TYPE_5__ {scalar_t__ DhcpIpStart; scalar_t__ DhcpIpEnd; } ;
typedef  TYPE_1__ VH ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 

UINT FUNC8(VH *v, UCHAR *mac)
{
	UINT ip_start, ip_end;
	UINT i;
	UINT num_retry;
	// Validate arguments
	if (v == NULL || mac == NULL)
	{
		return 0;
	}

	ip_start = FUNC1(v->DhcpIpStart);
	ip_end = FUNC1(v->DhcpIpEnd);

	if (ip_start > ip_end)
	{
		return 0;
	}

	num_retry = (ip_end - ip_start + 1) * 2;
	num_retry = FUNC2(num_retry, 65536 * 2);

	for (i = 0;i < num_retry;i++)
	{
		UCHAR rand_seed[sizeof(UINT) + 6];
		UCHAR hash[16];
		UINT rand_int;
		UINT new_ip;

		FUNC7(&rand_seed[0], i);
		FUNC0(rand_seed + sizeof(UINT), mac, 6);

		FUNC3(hash, rand_seed, sizeof(rand_seed));

		rand_int = FUNC4(hash);

		new_ip = FUNC1(ip_start + (rand_int % (ip_end - ip_start + 1)));

		if (FUNC5(v, new_ip) == NULL && FUNC6(v, new_ip) == NULL)
		{
			// A free IP address is found
			return new_ip;
		}
	}

	// There is no free address
	return 0;
}