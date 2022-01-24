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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
typedef  int /*<<< orphan*/  CRYPT ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__) ; 

BUF *FUNC9(char *password)
{
	UCHAR *tmp;
	UINT size;
	char *key = "EncryptPassword2";
	CRYPT *c;
	BUF *b;
	// Validate arguments
	if (password == NULL)
	{
		password = "";
	}

	size = FUNC6(password) + 1;
	tmp = FUNC8(size);

	c = FUNC4(key, FUNC6(key));
	FUNC0(c, tmp, password, size - 1);
	FUNC2(c);

	b = FUNC3();
	FUNC7(b, tmp, size - 1);
	FUNC5(b, 0, 0);
	FUNC1(tmp);

	return b;
}