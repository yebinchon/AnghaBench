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
typedef  int /*<<< orphan*/  date_str ;
struct TYPE_3__ {int /*<<< orphan*/  Cedar; int /*<<< orphan*/ * FirstSock; } ;
typedef  int /*<<< orphan*/  SOCK_EVENT ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  int /*<<< orphan*/  HTTP_HEADER ;
typedef  TYPE_1__ CONNECTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 

bool FUNC14(CONNECTION *c)
{
	SOCK *s;
	HTTP_HEADER *h;
	char date_str[MAX_SIZE];
	bool ret;
	bool ret2 = false;
	SOCK_EVENT *se;
	// Validate arguments
	if (c == NULL)
	{
		return false;
	}

	s = c->FirstSock;

	FUNC4(date_str, sizeof(date_str), FUNC13());

	// Return a response
	h = FUNC6("HTTP/1.1", "200", "OK");
	FUNC0(h, FUNC7("Content-Length", "18446744073709551615"));
	FUNC0(h, FUNC7("Server", "Microsoft-HTTPAPI/2.0"));
	FUNC0(h, FUNC7("Date", date_str));

	ret = FUNC9(s, h, NULL, 0);

	FUNC3(h);

	if (ret)
	{
		FUNC12(s, INFINITE);

		se = FUNC8();

		FUNC5(s, se);

		FUNC1("ProcessSstpHttps Start.\n");
		ret2 = FUNC10(c->Cedar, s, se);
		FUNC1("ProcessSstpHttps End.\n");

		FUNC11(se);
	}

	FUNC2(s);

	return ret2;
}