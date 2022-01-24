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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_9__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_8__ {int /*<<< orphan*/  SecureMode; } ;
typedef  TYPE_1__ SOCK ;
typedef  int /*<<< orphan*/  HTTP_HEADER ;
typedef  TYPE_2__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 TYPE_2__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,void*,int /*<<< orphan*/ ) ; 

bool FUNC11(SOCK *s, HTTP_HEADER *header, void *post_data, UINT post_size)
{
	char *header_str;
	BUF *b;
	bool ret;
	// Validate arguments
	if (s == NULL || header == NULL || (post_size != 0 && post_data == NULL))
	{
		return false;
	}

	// Check whether the Content-Length exists?
	if (FUNC3(header, "Content-Length") == NULL)
	{
		char tmp[MAX_SIZE];
		// Add because it does not exist
		FUNC9(tmp, post_size);
		FUNC0(header, FUNC6("Content-Length", tmp));
	}

	// Convert the header to string
	header_str = FUNC4(header);
	if (header_str == NULL)
	{
		return false;
	}
	b = FUNC5();
	FUNC10(b, header_str, FUNC8(header_str));
	FUNC1(header_str);

	// Append the data
	FUNC10(b, post_data, post_size);

	// Send
	ret = FUNC7(s, b->Buf, b->Size, s->SecureMode);

	FUNC2(b);

	return ret;
}