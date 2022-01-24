#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  date_str ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_11__ {int /*<<< orphan*/  Method; } ;
struct TYPE_10__ {char* Data; } ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  TYPE_1__ HTTP_VALUE ;
typedef  TYPE_2__ HTTP_HEADER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_2__*,char*) ; 
 int MAX_SIZE ; 
 TYPE_2__* FUNC4 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 

bool FUNC10(SOCK *s, UINT status_code, char *status_string, UCHAR *data, UINT data_size, char *content_type, char *add_header_name, char *add_header_value,
					  HTTP_HEADER *request_headers)
{
	HTTP_HEADER *h;
	char date_str[MAX_SIZE];
	char error_code_str[16];
	bool ret = false;
	HTTP_VALUE *origin;
	if (s == NULL || status_string == NULL || (data_size != 0 && data == NULL) || request_headers == NULL)
	{
		return false;
	}
	if (content_type == NULL)
	{
		content_type = "text/html; charset=utf-8";
	}

	FUNC9(error_code_str, status_code);
	FUNC2(date_str, sizeof(date_str), FUNC8());

	h = FUNC4("HTTP/1.1", error_code_str, status_string);

	if (FUNC7(request_headers->Method, "OPTIONS") == 0)
	{
		FUNC0(h, FUNC5("Allow", "OPTIONS, GET, POST"));
	}

	FUNC0(h, FUNC5("Cache-Control", "no-cache"));
	FUNC0(h, FUNC5("Content-Type", content_type));
	FUNC0(h, FUNC5("Date", date_str));
	FUNC0(h, FUNC5("Connection", "Keep-Alive"));
	FUNC0(h, FUNC5("Access-Control-Allow-Methods", "OPTIONS,GET,POST"));
	FUNC0(h, FUNC5("Access-Control-Allow-Headers", "X-VPNADMIN-HUBNAME,X-VPNADMIN-PASSWORD"));
	FUNC0(h, FUNC5("Access-Control-Allow-Credentials", "true"));

	origin = FUNC3(request_headers, "Origin");
	if (origin != NULL)
	{
		FUNC0(h, FUNC5("Access-Control-Allow-Origin", origin->Data));
	}

	if (add_header_name != NULL && add_header_value != NULL)
	{
		FUNC0(h, FUNC5(add_header_name, add_header_value));
	}

	ret = FUNC6(s, h, data, data_size);

	FUNC1(h);

	return ret;
}