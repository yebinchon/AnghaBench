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
 int /*<<< orphan*/  CLIENT_AUTHTYPE_PLAIN_PASSWORD ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,void*) ; 

PACK *FUNC3(char *hubname, char *username, void *plain_password)
{
	PACK *p;
	// Validate arguments
	if (hubname == NULL || username == NULL)
	{
		return NULL;
	}

	p = FUNC0();
	FUNC2(p, "method", "login");
	FUNC2(p, "hubname", hubname);
	FUNC2(p, "username", username);
	FUNC1(p, "authtype", CLIENT_AUTHTYPE_PLAIN_PASSWORD);
	FUNC2(p, "plain_password", plain_password);

	return p;
}