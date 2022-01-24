#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_8__ {scalar_t__ Buf; } ;
struct TYPE_7__ {size_t NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  TYPE_2__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int) ; 

char *FUNC5(TOKEN_LIST *t)
{
	UINT i;
	BUF *b;
	char *ret;
	// Validate arguments
	if (t == NULL)
	{
		return NULL;
	}

	b = FUNC1();
	for (i = 0;i < t->NumTokens;i++)
	{
		if (t->Token[i] != NULL)
		{
			FUNC2(t->Token[i]);
			if (FUNC3(t->Token[i]) == 0)
			{
				FUNC4(b, "-", 1);
			}
			else
			{
				FUNC4(b, t->Token[i], FUNC3(t->Token[i]));
			}
		}
		else
		{
			FUNC4(b, "-", 1);
		}
		if (i != (t->NumTokens - 1))
		{
			FUNC4(b, ",", 1);
		}
	}
	FUNC4(b, "\0", 1);

	ret = (char *)b->Buf;

	FUNC0(b);

	return ret;
}