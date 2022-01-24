#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 

void FUNC8(void *dst, char *username, char *password)
{
	BUF *b;
	char *username_upper;
	// Validate arguments
	if (dst == NULL || username == NULL || password == NULL)
	{
		return;
	}

	b = FUNC3();
	username_upper = FUNC0(username);
	FUNC6(username_upper);
	FUNC7(b, password, FUNC5(password));
	FUNC7(b, username_upper, FUNC5(username_upper));
	FUNC4(dst, b->Buf, b->Size);

	FUNC2(b);
	FUNC1(username_upper);
}