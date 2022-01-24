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
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_3__ {size_t NumTokens; int /*<<< orphan*/ * Token; } ;
typedef  TYPE_1__ UNI_TOKEN_LIST ;
typedef  size_t UINT ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 

UNI_TOKEN_LIST *FUNC4(LIST *o)
{
	UINT i;
	UNI_TOKEN_LIST *t;
	// Validate arguments
	if (o == NULL)
	{
		return NULL;
	}

	t = FUNC3(sizeof(UNI_TOKEN_LIST));
	t->NumTokens = FUNC1(o);
	t->Token = FUNC3(sizeof(wchar_t *) * t->NumTokens);
	for (i = 0;i < FUNC1(o);i++)
	{
		t->Token[i] = FUNC2(FUNC0(o, i));
	}

	return t;
}