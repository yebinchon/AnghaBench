#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  secret ;
typedef  int /*<<< orphan*/  redirect_url2 ;
typedef  int /*<<< orphan*/  html ;
typedef  int /*<<< orphan*/  header ;
typedef  int /*<<< orphan*/  hash_str ;
typedef  int /*<<< orphan*/  hash ;
typedef  size_t UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_14__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_13__ {TYPE_1__* Connection; int /*<<< orphan*/  Name; int /*<<< orphan*/  Username; } ;
struct TYPE_12__ {int /*<<< orphan*/  wSecond; int /*<<< orphan*/  wMinute; int /*<<< orphan*/  wHour; int /*<<< orphan*/  wDay; int /*<<< orphan*/  wMonth; int /*<<< orphan*/  wYear; } ;
struct TYPE_11__ {int /*<<< orphan*/  ClientIp; } ;
typedef  TYPE_2__ SYSTEMTIME ;
typedef  TYPE_3__ SESSION ;
typedef  int /*<<< orphan*/  HUB ;
typedef  TYPE_4__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  ACCESS_LIST_URL_INFO_TAG ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 size_t INFINITE ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*) ; 
 int MAX_REDIRECT_URL_LEN ; 
 int MAX_SIZE ; 
 TYPE_4__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int /*<<< orphan*/ ,char*,int) ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*) ; 
 size_t FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,char*,size_t) ; 

BUF *FUNC15(HUB *hub, SESSION *s, char *redirect_url)
{
	char html[MAX_REDIRECT_URL_LEN * 2 + 1 + MAX_SIZE];
	char header[MAX_REDIRECT_URL_LEN * 2 + 1 + MAX_SIZE];
	char redirect_url2[MAX_REDIRECT_URL_LEN * 2];
	BUF *b;
	// Validate arguments
	if (hub == NULL || s == NULL || redirect_url == NULL)
	{
		return NULL;
	}

	FUNC10(redirect_url2, sizeof(redirect_url2), redirect_url);
	FUNC13(redirect_url2);

	if (FUNC4(redirect_url2, ACCESS_LIST_URL_INFO_TAG))
	{
		// Get the secret key string
		char secret[MAX_SIZE];
		char tmp[MAX_SIZE];
		SYSTEMTIME st;
		UINT i, len, isp;

		isp = INFINITE;

		FUNC12(&st);
		FUNC1(secret, sizeof(secret));

		len = FUNC11(redirect_url2);

		for (i = 0;i < len;i++)
		{
			char c = redirect_url2[i];
			if (c == '|')
			{
				isp = i;
			}
		}

		if (isp != INFINITE)
		{
			FUNC10(secret, sizeof(secret), redirect_url2 + isp + 1);
			redirect_url2[isp] = 0;
		}

		FUNC2(tmp, sizeof(tmp), "%s|%s|%r|%04u%02u%02u%02u%02u%02u%s",
			s->Username, s->Name, &s->Connection->ClientIp,
			st.wYear, st.wMonth, st.wDay, st.wHour, st.wMinute, st.wSecond, (FUNC5(secret) ? "" : "|"));

		if (FUNC5(secret) == false)
		{
			// Calculate the hash
			UCHAR hash[SHA1_SIZE];
			char hash_str[MAX_SIZE];
			BUF *b2 = FUNC6();

			FUNC14(b2, tmp, FUNC11(tmp));
			FUNC14(b2, secret, FUNC11(secret));

			FUNC8(hash, b2->Buf, b2->Size);

			FUNC0(hash_str, sizeof(hash_str), hash, sizeof(hash));

			FUNC3(b2);

			FUNC9(tmp, sizeof(tmp), hash_str);

			// Replace
			FUNC7(redirect_url2, sizeof(redirect_url2), redirect_url2,
				ACCESS_LIST_URL_INFO_TAG, tmp, false);
		}
	}

	FUNC2(html, sizeof(html),
		"<html><head><title>Object moved</title></head><body>\r\n<h2>Object moved to <a href=\"%s\">here</a>.</h2>\r\n</body></html>\r\n\r\n",
		redirect_url2);

	FUNC2(header, sizeof(header),
		"HTTP/1.1 302 Found\r\nLocation: %s\r\nCache-Control: private\r\nContent-Type: text/html; charset=utf-8\r\nContent-Length: %u\r\n\r\n",
		redirect_url2, FUNC11(redirect_url2));

	b = FUNC6();

	FUNC14(b, header, FUNC11(header));
	FUNC14(b, html, FUNC11(html));

	return b;
}