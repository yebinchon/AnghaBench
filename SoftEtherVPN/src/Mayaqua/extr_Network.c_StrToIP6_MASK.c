#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  ss ;
typedef  scalar_t__ UINT ;
typedef  void* UCHAR ;
struct TYPE_10__ {scalar_t__ ipv6_scope_id; void** ipv6_addr; } ;
struct TYPE_9__ {int NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  TYPE_2__ IP ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*,int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ INFINITE ; 
 int /*<<< orphan*/  FUNC4 (void**,char*) ; 
 int MAX_PATH ; 
 TYPE_1__* FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*) ; 
 scalar_t__ FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 

bool FUNC14(IP *ip, char *str)
{
	TOKEN_LIST *t;
	char tmp[MAX_PATH];
	IP a;
	UINT i;
	UINT scope_id = 0;
	// Validate arguments
	if (str == NULL || ip == NULL)
	{
		return false;
	}

	FUNC13(&a);

	FUNC8(tmp, sizeof(tmp), str);
	FUNC12(tmp);

	if (FUNC7(tmp, "[") && FUNC2(tmp, "]"))
	{
		// If the string is enclosed in square brackets, remove brackets
		FUNC9(tmp, sizeof(tmp), &tmp[1]);

		if (FUNC10(tmp) >= 1)
		{
			tmp[FUNC10(tmp) - 1] = 0;
		}
	}

	// Remove the scope ID by analyzing if there is it
	i = FUNC6(tmp, "%", 0, false);
	if (i != INFINITE)
	{
		char ss[MAX_PATH];

		FUNC8(ss, sizeof(ss), &tmp[i + 1]);

		tmp[i] = 0;

		FUNC12(tmp);

		FUNC12(ss);

		scope_id = FUNC11(ss);
	}

	// Tokenize
	t = FUNC5(tmp, ":");
	if (t->NumTokens >= 3 && t->NumTokens <= 8)
	{
		UINT i, n;
		bool b = true;
		UINT k = 0;

		n = 0;

		for (i = 0;i < t->NumTokens;i++)
		{
			char *str = t->Token[i];

			if (i != 0 && i != (t->NumTokens - 1) && FUNC10(str) == 0)
			{
				n++;
				if (n == 1)
				{
					k += 2 * (8 - t->NumTokens + 1);
				}
				else
				{
					b = false;
					break;
				}
			}
			else
			{
				UCHAR chars[2];

				if (FUNC0(str) == false)
				{
					b = false;
					break;
				}

				FUNC4(chars, str);

				a.ipv6_addr[k++] = chars[0];
				a.ipv6_addr[k++] = chars[1];
			}
		}

		if (n != 0 && n != 1)
		{
			b = false;
		}
		else if (n == 0 && t->NumTokens != 8)
		{
			b = false;
		}

		if (b == false)
		{
			FUNC3(t);
			return false;
		}
	}
	else
	{
		FUNC3(t);
		return false;
	}

	FUNC3(t);

	FUNC1(ip, &a, sizeof(IP));

	ip->ipv6_scope_id = scope_id;

	return true;
}