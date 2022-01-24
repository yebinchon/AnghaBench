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
typedef  int UINT ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  int /*<<< orphan*/  HTTP_HEADER ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (char*) ; 
 char* FUNC8 (int) ; 

bool FUNC9(SOCK *s, char *url, char *query_string, HTTP_HEADER *request_headers)
{
	bool ret = false;
	char *txt;
	UINT txt_size;
	char *url2;
	UINT url2_size;
	char *body = "<html><head><title>Object moved</title></head><body>\r\n<h2>Object moved to <a href=\"$URL$\">here</a>.</h2>\r\n</body></html>";
	if (s == NULL || url == NULL || request_headers == NULL)
	{
		return false;
	}

	url2_size = (FUNC7(url) + FUNC7(query_string) + MAX_SIZE) * 2;
	url2 = FUNC8(url2_size);

	FUNC5(url2, url2_size, url);
	if (FUNC2(query_string) == false)
	{
		FUNC4(url2, url2_size, "?");
		FUNC4(url2, url2_size, query_string);
	}

	txt_size = (FUNC7(body) + FUNC7(url2) + MAX_SIZE) * 2;
	txt = FUNC8(txt_size);

	FUNC3(txt, txt_size, body, "$URL$", url2, false);

	ret = FUNC0(s, 302, "Found", txt, FUNC6(txt), NULL, "Location", url2, request_headers);

	FUNC1(txt);

	FUNC1(url2);

	return ret;
}