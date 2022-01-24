#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  LIST ;
typedef  char IP ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ BFLETS_DNS_PROXY_TIMEOUT_FOR_GET_F ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*) ; 
 int FUNC6 (char*) ; 
 int FUNC7 (char*) ; 
 char* FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,scalar_t__,int*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (char*,char*) ; 
 scalar_t__ FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  UDP_FILE_QUERY_BFLETS_TXT_FILENAME ; 

BUF *FUNC17(UINT timeout, bool *cancel)
{
	bool dummy_flag = false;
	BUF *txt_buf = NULL;
	BUF *ret = NULL;
	LIST *ip_list = NULL;
	UINT i;
	// Validate arguments
	if (cancel == NULL)
	{
		cancel = &dummy_flag;
	}
	if (timeout == 0)
	{
		timeout = BFLETS_DNS_PROXY_TIMEOUT_FOR_GET_F;
	}

	txt_buf = FUNC12(UDP_FILE_QUERY_BFLETS_TXT_FILENAME);
	if (txt_buf == NULL)
	{
		return NULL;
	}

	ip_list = FUNC10(NULL);

	while (true)
	{
		char *line = FUNC1(txt_buf);
		if (line == NULL)
		{
			break;
		}

		FUNC16(line);

		if (FUNC5(line) == false && FUNC14(line, "#") == false)
		{
			IP ip;

			if (FUNC15(&ip, line))
			{
				if (FUNC7(&ip) == false)
				{
					if (FUNC6(&ip) == false)
					{
						FUNC0(ip_list, FUNC2(&ip, sizeof(IP)));
					}
				}
			}
		}

		FUNC3(line);
	}

	FUNC4(txt_buf);

	ret = FUNC11(ip_list, timeout, cancel);

	for (i = 0;i < FUNC9(ip_list);i++)
	{
		IP *ip = FUNC8(ip_list, i);

		FUNC3(ip);
	}

	FUNC13(ip_list);

	return ret;
}