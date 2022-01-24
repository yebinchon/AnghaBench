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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  utf8 ;
typedef  int UCHAR ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int) ; 

BUF *FUNC4(wchar_t *username)
{
	BUF *b;
	UCHAR code, size;
	UCHAR utf8[254];
	// Validate arguments
	if (username == NULL)
	{
		return NULL;
	}

	// Convert the user name to a Unicode string
	FUNC2(utf8, sizeof(utf8), username);
	utf8[253] = 0;

	b = FUNC0();
	code = 1;
	size = 2 + (UCHAR)FUNC1(utf8);
	FUNC3(b, &code, 1);
	FUNC3(b, &size, 1);
	FUNC3(b, utf8, FUNC1(utf8));

	return b;
}