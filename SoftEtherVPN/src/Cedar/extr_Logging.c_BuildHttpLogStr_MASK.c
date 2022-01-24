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
typedef  int /*<<< orphan*/  url ;
struct TYPE_9__ {char* Buf; } ;
struct TYPE_8__ {int Path; int IsSsl; int Port; char* Method; char* Protocol; char* Referer; char* UserAgent; int /*<<< orphan*/  Hostname; } ;
typedef  TYPE_1__ HTTPLOG ;
typedef  TYPE_2__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int MAX_SIZE ; 
 TYPE_2__* FUNC4 () ; 
 scalar_t__ FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,int) ; 

char *FUNC8(HTTPLOG *h)
{
	BUF *b;
	char url[MAX_SIZE];
	char nullchar = 0;
	char *ret;
	// Validate arguments
	if (h == NULL)
	{
		return FUNC1("");
	}

	b = FUNC4();

	if (FUNC5(h->Path, "http://") || FUNC5(h->Path, "https://"))
	{
		FUNC6(url, sizeof(url), h->Path);
	}
	else
	{
		// URL generation
		if (h->IsSsl == false)
		{
			if (h->Port == 80)
			{
				FUNC2(url, sizeof(url), "http://%s%s",
					h->Hostname, h->Path);
			}
			else
			{
				FUNC2(url, sizeof(url), "http://%s:%u%s",
					h->Hostname, h->Port, h->Path);
			}
		}
		else
		{
			if (h->Port == 443)
			{
				FUNC2(url, sizeof(url), "https://%s/",
					h->Hostname);
			}
			else
			{
				FUNC2(url, sizeof(url), "https://%s:%u/",
					h->Hostname, h->Port);
			}
		}
	}

	FUNC0(b, "HttpMethod", h->Method);
	FUNC0(b, "HttpUrl", url);
	FUNC0(b, "HttpProtocol", h->Protocol);
	FUNC0(b, "HttpReferer", h->Referer);
	FUNC0(b, "HttpUserAgent", h->UserAgent);

	FUNC7(b, &nullchar, 1);

	ret = FUNC1(b->Buf);

	FUNC3(b);

	return ret;
}