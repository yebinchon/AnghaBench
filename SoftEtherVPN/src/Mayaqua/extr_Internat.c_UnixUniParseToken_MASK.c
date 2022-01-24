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
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_4__ {void* Token; } ;
typedef  TYPE_1__ UNI_TOKEN_LIST ;
typedef  int /*<<< orphan*/  TOKEN_LIST ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int) ; 

UNI_TOKEN_LIST *FUNC6(wchar_t *src, wchar_t *separator)
{
	UNI_TOKEN_LIST *ret;
	TOKEN_LIST *t;
	char *src_s;
	char *sep_s;

	// Validate arguments
	if (src == NULL || separator == NULL)
	{
		ret = FUNC5(sizeof(UNI_TOKEN_LIST));
		ret->Token = FUNC5(0);
		return ret;
	}

	src_s = FUNC0(src);
	sep_s = FUNC0(separator);

	t = FUNC3(src_s, sep_s);

	ret = FUNC4(t);
	FUNC2(t);

	FUNC1(src_s);
	FUNC1(sep_s);

	return ret;
}