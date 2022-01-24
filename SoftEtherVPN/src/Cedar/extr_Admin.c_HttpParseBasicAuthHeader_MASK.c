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
typedef  int /*<<< orphan*/  value ;
typedef  int /*<<< orphan*/  key ;
typedef  int UINT ;
struct TYPE_3__ {char* Data; } ;
typedef  TYPE_1__ HTTP_VALUE ;
typedef  int /*<<< orphan*/  HTTP_HEADER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (char*,char*,int,char*,int,char*) ; 
 int FUNC4 (char*) ; 
 int MAX_SIZE ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*) ; 
 int FUNC7 (char*) ; 
 char* FUNC8 (int) ; 

bool FUNC9(HTTP_HEADER *h, char *username, UINT username_size, char *password, UINT password_size)
{
	bool ret = false;
	HTTP_VALUE *auth_value;
	HTTP_VALUE *vpnadmin_hubname;
	HTTP_VALUE *vpnadmin_password;
	if (h == NULL || username == NULL || password == NULL)
	{
		return false;
	}

	auth_value = FUNC2(h, "Authorization");
	vpnadmin_hubname = FUNC2(h, "X-VPNADMIN-HUBNAME");
	vpnadmin_password = FUNC2(h, "X-VPNADMIN-PASSWORD");

	if (vpnadmin_password != NULL)
	{
		if (vpnadmin_hubname == NULL)
		{
			FUNC6(username, username_size, "");
		}
		else
		{
			FUNC6(username, username_size, vpnadmin_hubname->Data);
		}

		FUNC6(password, password_size, vpnadmin_password->Data);

		ret = true;
	}

	if (ret == false && auth_value != NULL)
	{
		char key[32], value[MAX_SIZE];

		if (FUNC3(auth_value->Data, key, sizeof(key), value, sizeof(value), " \t"))
		{
			if (FUNC5(key, "Basic") == 0 && FUNC4(value) == false)
			{
				UINT b64_dest_size = FUNC7(value) * 2 + 256;
				char *b64_dest = FUNC8(b64_dest_size);

				FUNC0(b64_dest, value);

				if (FUNC4(b64_dest) == false)
				{
					if (b64_dest[0] == ':')
					{
						// Empty username
						FUNC6(username, username_size, "");
						FUNC6(password, password_size, b64_dest + 1);
						ret = true;
					}
					else
					{
						if (FUNC3(b64_dest, username, username_size, password, password_size, ":"))
						{
							ret = true;
						}
					}
				}

				FUNC1(b64_dest);
			}
		}
	}

	return ret;
}