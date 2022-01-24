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
struct TYPE_4__ {char* data; } ;
typedef  TYPE_1__* StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_NAME ; 
 int /*<<< orphan*/  ERROR ; 
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 TYPE_1__* FUNC6 () ; 

__attribute__((used)) static char *
FUNC7(const char *resultId)
{
	StringInfo resultFileName = FUNC6();
	const char *resultDirectory = FUNC0();
	char *checkChar = (char *) resultId;

	for (; *checkChar; checkChar++)
	{
		if (!((*checkChar >= 'a' && *checkChar <= 'z') ||
			  (*checkChar >= 'A' && *checkChar <= 'Z') ||
			  (*checkChar >= '0' && *checkChar <= '9') ||
			  (*checkChar == '_') || (*checkChar == '-')))
		{
			FUNC2(ERROR, (FUNC3(ERRCODE_INVALID_NAME),
							FUNC5("result key \"%s\" contains invalid character",
								   resultId),
							FUNC4("Result keys may only contain letters, numbers, "
									"underscores and hyphens.")));
		}
	}

	FUNC1(resultFileName, "%s/%s.data",
					 resultDirectory, resultId);

	return resultFileName->data;
}