#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  date_str ;
struct TYPE_4__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  HTTP_HEADER ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 char* HTTP_CONTENT_TYPE2 ; 
 char* HTTP_KEEP_ALIVE ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

bool FUNC10(SOCK *s, PACK *p)
{
	BUF *b;
	bool ret;
	HTTP_HEADER *h;
	char date_str[MAX_SIZE];
	// Validate arguments
	if (s == NULL || p == NULL)
	{
		return false;
	}

	FUNC1(p);

	b = FUNC7(p);
	if (b == NULL)
	{
		return false;
	}

	h = FUNC5("HTTP/1.1", "200", "OK");

	FUNC4(date_str, sizeof(date_str), FUNC9());
	FUNC0(h, FUNC6("Date", date_str));
	FUNC0(h, FUNC6("Keep-Alive", HTTP_KEEP_ALIVE));
	FUNC0(h, FUNC6("Connection", "Keep-Alive"));
	FUNC0(h, FUNC6("Content-Type", HTTP_CONTENT_TYPE2));

	ret = FUNC8(s, h, b->Buf, b->Size);

	FUNC3(h);
	FUNC2(b);

	return ret;
}