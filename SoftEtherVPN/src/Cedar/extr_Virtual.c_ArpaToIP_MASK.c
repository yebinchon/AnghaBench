#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
typedef  scalar_t__ UCHAR ;
struct TYPE_9__ {scalar_t__* addr; } ;
struct TYPE_8__ {int NumTokens; int /*<<< orphan*/ * Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  TYPE_2__ IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 TYPE_1__* FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 

bool FUNC5(IP *ip, char *str)
{
	TOKEN_LIST *token;
	bool ret = false;
	// Validate arguments
	if (ip == NULL || str == NULL)
	{
		return false;
	}

	// Token conversion
	token = FUNC2(str, ".");
	if (token->NumTokens == 6)
	{
		// Convert the token [0, 1, 2, 3] to IP
		UINT i;
		FUNC4(ip, sizeof(IP));
		for (i = 0;i < 4;i++)
		{
			ip->addr[i] = (UCHAR)FUNC3(token->Token[3 - i]);
		}
		ret = true;
	}

	FUNC0(token);

	if (FUNC1(ip) == 0)
	{
		ret = false;
	}

	return ret;
}