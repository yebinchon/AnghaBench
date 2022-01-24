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
typedef  int /*<<< orphan*/  macstr_a ;
typedef  int /*<<< orphan*/  macstr2 ;
struct TYPE_4__ {int NumTokens; int /*<<< orphan*/ ** Token; } ;
typedef  TYPE_1__ UNI_TOKEN_LIST ;
typedef  size_t UINT ;
typedef  int /*<<< orphan*/  UCHAR ;

/* Variables and functions */
 size_t INFINITE ; 
 int MAX_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  USER_MAC_STR_PREFIX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

bool FUNC10(UCHAR *mac, wchar_t *note)
{
	bool ret = false;
	UINT i;

	FUNC9(mac, 6);
	if (mac == NULL || note == NULL)
	{
		return false;
	}

	i = FUNC4(note, USER_MAC_STR_PREFIX, 0, false);
	if (i != INFINITE)
	{
		wchar_t *macstr_start = &note[i + FUNC6(USER_MAC_STR_PREFIX)];
		wchar_t macstr2[MAX_SIZE];
		UNI_TOKEN_LIST *tokens;

		FUNC5(macstr2, sizeof(macstr2), macstr_start);

		FUNC8(macstr2);

		tokens = FUNC3(macstr2, L" ,/()[].");
		if (tokens != NULL)
		{
			if (tokens->NumTokens >= 1)
			{
				wchar_t *macstr = tokens->Token[0];

				if (FUNC2(macstr) == false)
				{
					char macstr_a[MAX_SIZE];

					FUNC7(macstr_a, sizeof(macstr_a), macstr);

					ret = FUNC0(mac, macstr_a);
				}
			}

			FUNC1(tokens);
		}
	}

	return ret;
}