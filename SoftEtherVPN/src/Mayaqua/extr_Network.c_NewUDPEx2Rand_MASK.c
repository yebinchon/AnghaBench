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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_6__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,int,int /*<<< orphan*/ *) ; 
 scalar_t__ RAND_UDP_PORT_DEFAULT_NUM_RETRY ; 
 scalar_t__ RAND_UDP_PORT_END ; 
 scalar_t__ RAND_UDP_PORT_START ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 

SOCK *FUNC7(bool ipv6, IP *ip, void *rand_seed, UINT rand_seed_size, UINT num_retry)
{
	UINT i;
	// Validate arguments
	if (rand_seed == NULL || rand_seed_size == 0)
	{
		return NULL;
	}
	if (num_retry == 0)
	{
		num_retry = RAND_UDP_PORT_DEFAULT_NUM_RETRY;
	}

	for (i = 0; i < (num_retry + 1);i++)
	{
		BUF *buf = FUNC1();
		UCHAR hash[SHA1_SIZE];
		UINT port = 0;
		SOCK *s;

		FUNC5(buf, rand_seed, rand_seed_size);
		FUNC6(buf, i);

		FUNC4(hash, buf->Buf, buf->Size);

		FUNC0(buf);

		port = FUNC3(hash);

		port = RAND_UDP_PORT_START + (port % (RAND_UDP_PORT_END - RAND_UDP_PORT_START));

		s = FUNC2(port, ipv6, ip);

		if (s != NULL)
		{
			return s;
		}
	}

	return FUNC2(0, ipv6, ip);
}