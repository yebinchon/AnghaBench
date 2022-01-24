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
struct TYPE_8__ {int /*<<< orphan*/  PasswordRemoteOnly; int /*<<< orphan*/  EncryptedPassword; } ;
struct TYPE_7__ {char* Password; int /*<<< orphan*/  PasswordRemoteOnly; } ;
typedef  TYPE_1__ RPC_CLIENT_PASSWORD ;
typedef  TYPE_2__ CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

bool FUNC5(CLIENT *c, RPC_CLIENT_PASSWORD *pass)
{
	char *str;
	if (c == NULL)
	{
		return false;
	}

	str = pass->Password;

	if (FUNC3(str, "********") != 0)
	{
		// Hash the password
		FUNC2(c->EncryptedPassword, str, FUNC4(str));
	}

	c->PasswordRemoteOnly = pass->PasswordRemoteOnly;

	FUNC0(c, "LC_SET_PASSWORD");

	FUNC1(c);

	return true;
}