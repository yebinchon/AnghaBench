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
struct TYPE_8__ {int NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  TYPE_2__ IP ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 

bool FUNC8(IP *ip, char *str)
{
	TOKEN_LIST *token;
	char *tmp;
	UINT i;
	// Validate arguments
	if (ip == NULL || str == NULL)
	{
		return false;
	}

	if (FUNC4(ip, str))
	{
		return true;
	}

	FUNC7(ip, sizeof(IP));

	tmp = FUNC0(str);
	FUNC6(tmp);
	token = FUNC3(tmp, ".");
	FUNC1(tmp);

	if (token->NumTokens != 4)
	{
		FUNC2(token);
		return false;
	}
	for (i = 0;i < 4;i++)
	{
		char *s = token->Token[i];
		if (s[0] < '0' || s[0] > '9' ||
			(FUNC5(s) >= 256))
		{
			FUNC2(token);
			return false;
		}
	}
	FUNC7(ip, sizeof(IP));
	for (i = 0;i < 4;i++)
	{
		ip->addr[i] = (UCHAR)FUNC5(token->Token[i]);
	}

	FUNC2(token);

	return true;
}