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
typedef  int /*<<< orphan*/  tmp ;
typedef  scalar_t__ UINT ;
struct TYPE_4__ {scalar_t__ NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ INFINITE ; 
 int MAX_PATH ; 
 scalar_t__ FUNC2 (char*,char**,scalar_t__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

bool FUNC8(char *name, UINT name_size, UINT *port, char *str, char *server_type)
{
#ifdef	OS_WIN32
	TOKEN_LIST *t;
	UINT i;
	bool ret = false;
	// Validate arguments
	if (name == NULL || port == NULL || str == NULL || server_type == NULL)
	{
		return false;
	}

	t = ParseToken(str, ";");

	for (i = 0;i < t->NumTokens;i++)
	{
		char *s = t->Token[i];
		UINT i;

		Trim(s);

		i = SearchStrEx(s, "=", 0, false);
		if (i != INFINITE)
		{
			char tmp[MAX_PATH];

			StrCpy(name, name_size, s);
			name[i] = 0;

			if (StrCmpi(name, server_type) == 0)
			{
				char *host;
				StrCpy(tmp, sizeof(tmp), s + i + 1);

				if (ParseHostPort(tmp, &host, port, 0))
				{
					StrCpy(name, name_size, host);
					Free(host);

					if (*port != 0)
					{
						ret = true;
					}
					break;
				}
			}
		}
	}

	FreeToken(t);

	return ret;
#else	// OS_WIN32
	return true;
#endif	// OS_WIN32
}