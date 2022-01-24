#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_7__ {int /*<<< orphan*/  RemoteIP; } ;
struct TYPE_6__ {int NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  TYPE_2__ SOCK ;
typedef  int /*<<< orphan*/  IP ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  ADMINIP_TXT ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 size_t INFINITE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 size_t FUNC12 (char*,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

bool FUNC16(SOCK *sock, char *hubname)
{
	BUF *b;
	char *s;
	bool ok = false;
	// Validate arguments
	if (sock == NULL)
	{
		return false;
	}

	b = FUNC11(ADMINIP_TXT);
	if (b == NULL)
	{
		return true;
	}

	while (true)
	{
		UINT i;
		TOKEN_LIST *t;
		IP ip;
		IP mask;
		IP ip1;
		IP ip2;
		s = FUNC0(b);

		if (s == NULL)
		{
			break;
		}

		FUNC15(s);

		i = FUNC12(s, "//", 0, false);
		if (i != INFINITE)
		{
			s[i] = 0;
		}

		i = FUNC12(s, "#", 0, false);
		if (i != INFINITE)
		{
			s[i] = 0;
		}

		FUNC15(s);

		t = FUNC10(s, " \t");
		if (t != NULL)
		{
			if (t->NumTokens >= 1)
			{
				if (t->NumTokens == 1 || FUNC13(hubname, t->Token[1]) == 0)
				{
					if (FUNC9(t->Token[0], &ip, &mask))
					{
						if (FUNC7(&sock->RemoteIP) && FUNC7(&ip))
						{
							FUNC5(&ip1, &sock->RemoteIP, &mask);
							FUNC5(&ip2, &ip, &mask);

							if (FUNC1(&ip1, &ip2) == 0)
							{
								ok = true;
							}
						}
						else if (FUNC8(&sock->RemoteIP) && FUNC8(&ip))
						{
							FUNC6(&ip1, &sock->RemoteIP, &mask);
							FUNC6(&ip2, &ip, &mask);

							if (FUNC1(&ip1, &ip2) == 0)
							{
								ok = true;
							}
						}
					}
					else if (FUNC14(&ip, t->Token[0]))
					{
						if (FUNC1(&sock->RemoteIP, &ip) == 0)
						{
							ok = true;
						}
					}

					if (FUNC13(t->Token[0], "*") == 0)
					{
						ok = true;
					}
				}
			}

			FUNC4(t);
		}

		FUNC2(s);
	}

	FUNC3(b);

	return ok;
}