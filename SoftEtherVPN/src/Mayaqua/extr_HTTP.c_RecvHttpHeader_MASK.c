#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  Version; } ;
struct TYPE_9__ {int NumTokens; int /*<<< orphan*/ * Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  TYPE_2__ HTTP_HEADER ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  HTTP_HEADER_LINE_MAX_SIZE ; 
 scalar_t__ FUNC4 (char*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 TYPE_1__* FUNC7 (char*,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

HTTP_HEADER *FUNC11(SOCK *s)
{
	TOKEN_LIST *token = NULL;
	char *str = NULL;
	HTTP_HEADER *header = NULL;
	// Validate arguments
	if (s == NULL)
	{
		return NULL;
	}

	// Get the first line
	str = FUNC8(s, HTTP_HEADER_LINE_MAX_SIZE);
	if (str == NULL)
	{
		return NULL;
	}

	// Split into tokens
	token = FUNC7(str, " ");

	FUNC2(FUNC6(str));

	if (token->NumTokens < 3)
	{
		FUNC3(token);
		return NULL;
	}

	// Creating a header object
	header = FUNC5(token->Token[0], token->Token[1], token->Token[2]);
	FUNC3(token);

	if (FUNC9(header->Version, "HTTP/0.9") == 0)
	{
		// The header ends with this line
		return header;
	}

	// Get the subsequent lines
	while (true)
	{
		str = FUNC8(s, HTTP_HEADER_LINE_MAX_SIZE);
		FUNC10(str);
		if (FUNC4(str))
		{
			// End of header
			FUNC2(FUNC6(str));
			break;
		}

		if (FUNC0(header, str) == false)
		{
			FUNC2(FUNC6(str));
			FUNC1(header);
			header = NULL;
			break;
		}

		FUNC2(FUNC6(str));
	}

	return header;
}