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
typedef  size_t UINT ;
typedef  int UCHAR ;
struct TYPE_4__ {size_t NumTokens; int** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 TYPE_1__* FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int) ; 

BUF *FUNC6(char *hostname)
{
	UINT i;
	UCHAR size;
	TOKEN_LIST *token;
	BUF *b;
	// Validate arguments
	if (hostname == NULL)
	{
		return NULL;
	}

	// Split the host name into tokens
	token = FUNC2(hostname, ".");
	if (token == NULL)
	{
		return NULL;
	}

	b = FUNC1();

	// Add a host string
	for (i = 0;i < token->NumTokens;i++)
	{
		size = (UCHAR)FUNC4(token->Token[i]);
		FUNC5(b, &size, 1);
		FUNC5(b, token->Token[i], size);
	}

	// NULL character
	size = 0;
	FUNC5(b, &size, 1);

	FUNC3(b, 0, 0);

	FUNC0(token);

	return b;
}