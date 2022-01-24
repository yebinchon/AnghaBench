#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_10__ {int Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_9__ {int /*<<< orphan*/  ValueList; int /*<<< orphan*/  Version; int /*<<< orphan*/  Target; int /*<<< orphan*/  Method; } ;
struct TYPE_8__ {int /*<<< orphan*/  Data; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ HTTP_VALUE ;
typedef  TYPE_2__ HTTP_HEADER ;
typedef  TYPE_3__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int HTTP_HEADER_LINE_MAX_SIZE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (int) ; 
 TYPE_3__* FUNC7 () ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,char*,int) ; 

char *FUNC10(HTTP_HEADER *header)
{
	BUF *b;
	char *tmp;
	UINT i;
	char *s;
	// Validate arguments
	if (header == NULL)
	{
		return NULL;
	}

	tmp = FUNC6(HTTP_HEADER_LINE_MAX_SIZE);
	b = FUNC7();

	// Header
	FUNC1(tmp, HTTP_HEADER_LINE_MAX_SIZE,
		"%s %s %s\r\n", header->Method, header->Target, header->Version);
	FUNC9(b, tmp, FUNC8(tmp));

	// Value
	for (i = 0;i < FUNC5(header->ValueList);i++)
	{
		HTTP_VALUE *v = (HTTP_VALUE *)FUNC4(header->ValueList, i);
		FUNC1(tmp, HTTP_HEADER_LINE_MAX_SIZE,
			"%s: %s\r\n", v->Name, v->Data);
		FUNC9(b, tmp, FUNC8(tmp));
	}

	// Trailing newline
	FUNC9(b, "\r\n", 2);
	s = FUNC6(b->Size + 1);
	FUNC0(s, b->Buf, b->Size);
	s[b->Size] = 0;

	FUNC3(b);
	FUNC2(tmp);

	return s;
}