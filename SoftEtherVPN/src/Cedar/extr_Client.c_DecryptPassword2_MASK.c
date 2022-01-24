#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int Size; int /*<<< orphan*/  Buf; } ;
typedef  int /*<<< orphan*/  CRYPT ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int) ; 

char *FUNC6(BUF *b)
{
	char *str;
	char *key = "EncryptPassword2";
	CRYPT *c;
	// Validate arguments
	if (b == NULL)
	{
		return FUNC0("");
	}

	str = FUNC5(b->Size + 1);
	c = FUNC3(key, FUNC4(key));
	FUNC1(c, str, b->Buf, b->Size);
	FUNC2(c);

	str[b->Size] = 0;

	return str;
}