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
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
typedef  TYPE_1__ IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,char) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  UDP_NAT_T_SERVER_TAG ; 
 int /*<<< orphan*/  UDP_NAT_T_SERVER_TAG_ALT ; 

void FUNC8(char *dst, UINT size, IP *ip)
{
	char tmp[16];
	// Validate arguments
	if (dst == NULL)
	{
		return;
	}

	if (ip != NULL && FUNC3(ip))
	{
		UCHAR hash[SHA1_SIZE];

		FUNC6(hash, ip->addr, 4);
		FUNC0(tmp, sizeof(tmp), hash, 2);
	}
	else
	{
		UCHAR rand[2];
		FUNC5(rand, 2);
		FUNC0(tmp, sizeof(tmp), rand, 2);
	}

	FUNC7(tmp);
	FUNC2(dst, size,
		(FUNC4() ? UDP_NAT_T_SERVER_TAG_ALT : UDP_NAT_T_SERVER_TAG),
		tmp[2], tmp[3]);


	if (false)
	{
		FUNC1("Hash Src IP: %r\n"
			  "Hash Dst HN: %s\n",
			  ip,
			  dst);
	}
}