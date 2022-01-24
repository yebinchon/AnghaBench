#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  mask ;
typedef  int /*<<< orphan*/  ip ;
struct TYPE_3__ {int Masked; int /*<<< orphan*/  SubnetMask; int /*<<< orphan*/  IpAddress; } ;
typedef  TYPE_1__ AC ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ *) ; 

char *FUNC4(AC *ac)
{
	char tmp[MAX_SIZE];
	char ip[64], mask[64];

	if (ac == NULL)
	{
		return NULL;
	}

	FUNC2(ip, sizeof(ip), &ac->IpAddress);
	FUNC3(mask, sizeof(mask), &ac->SubnetMask);

	if (ac->Masked == false)
	{
		FUNC1(tmp, sizeof(tmp), "%s", ip);
	}
	else
	{
		FUNC1(tmp, sizeof(tmp), "%s/%s", ip, mask);
	}

	return FUNC0(tmp);
}