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
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int,char*) ; 

bool FUNC3(K *k, wchar_t *filename, bool text, char *password)
{
	BUF *b;
	bool ret;
	// Validate arguments
	if (k == NULL || filename == NULL)
	{
		return false;
	}

	b = FUNC2(k, text, password);
	if (b == NULL)
	{
		return false;
	}

	ret = FUNC0(b, filename);
	FUNC1(b);

	return ret;
}