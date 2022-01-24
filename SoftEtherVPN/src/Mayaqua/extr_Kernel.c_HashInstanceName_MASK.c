#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_2__ {scalar_t__ OsType; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC2 (scalar_t__,int) ; 
 TYPE_1__* FUNC3 () ; 
 int MAX_SIZE ; 
 scalar_t__ OSTYPE_WINDOWS_NT_4_TERMINAL_SERVER ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

void FUNC10(char *name, UINT size, char *instance_name)
{
	char tmp[MAX_SIZE];
	UCHAR hash[SHA1_SIZE];
	char key[11];
	// Validate arguments
	if (name == NULL || instance_name == NULL)
	{
		return;
	}

	FUNC6(tmp, sizeof(tmp), instance_name);
	FUNC9(tmp);
	FUNC8(tmp);

	FUNC5(hash, tmp, FUNC7(tmp));
	FUNC0(key, sizeof(key), hash, 5);
	key[10] = 0;

	FUNC1(name, size, "VPN-%s", key);

	if (FUNC4(FUNC3()->OsType))
	{
		if (FUNC2(FUNC3()->OsType, 100) >= 2 ||
			FUNC3()->OsType == OSTYPE_WINDOWS_NT_4_TERMINAL_SERVER)
		{
			FUNC6(tmp, sizeof(tmp), name);
			FUNC1(name, size, "Global\\%s", tmp);
		}
	}
}