#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ip_str ;
typedef  int /*<<< orphan*/  date_str ;
struct TYPE_8__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_7__ {int /*<<< orphan*/  RemoteIP; } ;
typedef  TYPE_1__ SOCK ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  HTTP_HEADER ;
typedef  TYPE_2__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 char* HTTP_CONTENT_TYPE2 ; 
 char* HTTP_KEEP_ALIVE ; 
 int /*<<< orphan*/  HTTP_VPN_TARGET ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

bool FUNC11(SOCK *s, PACK *p)
{
	BUF *b;
	bool ret;
	HTTP_HEADER *h;
	char date_str[MAX_SIZE];
	char ip_str[MAX_SIZE];

	// Validate arguments
	if (s == NULL || p == NULL)
	{
		return false;
	}

	FUNC5(ip_str, sizeof(ip_str), &s->RemoteIP);

	FUNC1(p);

	b = FUNC8(p);
	if (b == NULL)
	{
		return false;
	}

	h = FUNC6("POST", HTTP_VPN_TARGET, "HTTP/1.1");

	FUNC4(date_str, sizeof(date_str), FUNC10());
	FUNC0(h, FUNC7("Date", date_str));
	FUNC0(h, FUNC7("Host", ip_str));
	FUNC0(h, FUNC7("Keep-Alive", HTTP_KEEP_ALIVE));
	FUNC0(h, FUNC7("Connection", "Keep-Alive"));
	FUNC0(h, FUNC7("Content-Type", HTTP_CONTENT_TYPE2));

	ret = FUNC9(s, h, b->Buf, b->Size);

	FUNC3(h);
	FUNC2(b);

	return ret;
}