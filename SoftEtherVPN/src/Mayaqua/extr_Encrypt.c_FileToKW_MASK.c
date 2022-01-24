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
typedef  int /*<<< orphan*/  K ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

K *FUNC4(wchar_t *filename, bool private_key, char *password)
{
	bool text;
	BUF *b;
	K *k;
	// Validate arguments
	if (filename == NULL)
	{
		return NULL;
	}

	b = FUNC3(filename);
	if (b == NULL)
	{
		return NULL;
	}

	text = FUNC2(b);
	if (text == false)
	{
		k = FUNC0(b, private_key, false, NULL);
	}
	else
	{
		k = FUNC0(b, private_key, true, NULL);
		if (k == NULL)
		{
			k = FUNC0(b, private_key, true, password);
		}
	}

	FUNC1(b);

	return k;
}