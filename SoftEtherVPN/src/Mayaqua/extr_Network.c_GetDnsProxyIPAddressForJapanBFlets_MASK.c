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
typedef  scalar_t__ UINT ;
struct TYPE_3__ {char* Value; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_1__ INI_ENTRY ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 scalar_t__ BFLETS_DNS_PROXY_TIMEOUT_FOR_GET_F ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__,int*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*) ; 

bool FUNC9(IP *ip_ret, UINT timeout, bool *cancel)
{
	BUF *b;
	LIST *o;
	bool ret = false;
	// Validate arguments
	if (ip_ret == NULL)
	{
		return false;
	}
	if (timeout == 0)
	{
		timeout = BFLETS_DNS_PROXY_TIMEOUT_FOR_GET_F;
	}

	b = FUNC6(timeout, cancel);

	if (b == NULL)
	{
		return false;
	}

	o = FUNC7(b);

	if (o != NULL)
	{
		INI_ENTRY *e = FUNC3(o, "DDnsServerForBFlets");

		if (e != NULL)
		{
			char *s = e->Value;

			if (FUNC4(s) == false)
			{
				IP ip;

				if (FUNC8(&ip, s))
				{
					if (FUNC5(&ip) == false)
					{
						FUNC0(ip_ret, &ip, sizeof(IP));
						ret = true;
					}
				}
			}
		}
	}

	FUNC2(o);
	FUNC1(b);

	return ret;
}