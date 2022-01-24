#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  url ;
typedef  int /*<<< orphan*/  query_string ;
typedef  scalar_t__ UINT ;
struct TYPE_20__ {scalar_t__ MaxJsonRpcRecvSize; } ;
typedef  TYPE_1__ UCHAR ;
struct TYPE_22__ {int JsonRpcAuthed; int /*<<< orphan*/  Listener; int /*<<< orphan*/  Cedar; } ;
struct TYPE_21__ {int /*<<< orphan*/  SecureMode; } ;
typedef  TYPE_2__ SOCK ;
typedef  int /*<<< orphan*/  HTTP_HEADER ;
typedef  TYPE_3__ CONNECTION ;
typedef  TYPE_1__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ INFINITE ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int MAX_SIZE ; 
 scalar_t__ FUNC5 (TYPE_2__*,TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 TYPE_1__* FUNC11 (scalar_t__) ; 

void FUNC12(CONNECTION *c, SOCK *s, HTTP_HEADER *h, UINT post_data_size, char *url_target)
{
	ADMIN *a;
	UCHAR *data;
	char url[MAX_PATH];
	char query_string[MAX_SIZE];
	UINT i;
	if (c == NULL || s == NULL || h == NULL || url_target == NULL)
	{
		return;
	}

	a = FUNC4(c->Cedar, s, h);
	if (a == NULL)
	{
		FUNC6(s, post_data_size, s->SecureMode);
		FUNC1(s, h);
		return;
	}

	if (post_data_size > a->MaxJsonRpcRecvSize)
	{
		FUNC2(s);
		return;
	}

	data = FUNC11(post_data_size + 1);

	if (FUNC5(s, data, post_data_size, s->SecureMode))
	{
		c->JsonRpcAuthed = true;
#ifndef	GC_SOFTETHER_OSS
		FUNC7(c->Listener, s);
#endif	// GC_SOFTETHER_OSS

		// Divide url_target into URL and query string
		FUNC9(url, sizeof(url), url_target);
		FUNC10(query_string, sizeof(query_string));
		i = FUNC8(url, "?", 0);
		if (i != INFINITE)
		{
			FUNC9(query_string, sizeof(query_string), url + i + 1);
			url[i] = 0;
		}

		FUNC0(a, c, s, h, url, query_string, "/admin", "|wwwroot/admin");
	}

	FUNC3(data);
	FUNC3(a);
}