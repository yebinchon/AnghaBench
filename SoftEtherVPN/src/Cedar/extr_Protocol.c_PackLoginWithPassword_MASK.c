#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_AUTHTYPE_PASSWORD ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  SHA1_SIZE ; 

PACK *FUNC4(char *hubname, char *username, void *secure_password)
{
	PACK *p;
	// Validate arguments
	if (hubname == NULL || username == NULL)
	{
		return NULL;
	}

	p = FUNC0();
	FUNC3(p, "method", "login");
	FUNC3(p, "hubname", hubname);
	FUNC3(p, "username", username);
	FUNC2(p, "authtype", CLIENT_AUTHTYPE_PASSWORD);
	FUNC1(p, "secure_password", secure_password, SHA1_SIZE);

	return p;
}