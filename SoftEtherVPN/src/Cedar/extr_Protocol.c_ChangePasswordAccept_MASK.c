#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  username ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  secure_old_password ;
typedef  int /*<<< orphan*/  new_password_ntlm ;
typedef  int /*<<< orphan*/  new_password ;
typedef  int /*<<< orphan*/  hubname ;
struct TYPE_15__ {scalar_t__ AuthType; int /*<<< orphan*/  lock; scalar_t__ AuthData; TYPE_4__* Group; TYPE_2__* Policy; } ;
typedef  TYPE_5__ USER ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_17__ {int /*<<< orphan*/ * NtLmSecureHash; int /*<<< orphan*/ * HashedKey; } ;
struct TYPE_16__ {int /*<<< orphan*/  Name; TYPE_1__* FirstSock; int /*<<< orphan*/ * Cedar; int /*<<< orphan*/ * Random; } ;
struct TYPE_14__ {TYPE_3__* Policy; } ;
struct TYPE_13__ {int FixPassword; } ;
struct TYPE_12__ {int FixPassword; } ;
struct TYPE_11__ {int /*<<< orphan*/  RemoteIP; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  HUB ;
typedef  TYPE_6__ CONNECTION ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_7__ AUTHPASSWORD ;

/* Variables and functions */
 scalar_t__ AUTHTYPE_PASSWORD ; 
 TYPE_5__* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ERR_HUB_NOT_FOUND ; 
 int /*<<< orphan*/  ERR_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_NOT_ENOUGH_RIGHT ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  ERR_OLD_PASSWORD_WRONG ; 
 int /*<<< orphan*/  ERR_PROTOCOL_ERROR ; 
 int /*<<< orphan*/  ERR_USER_AUTHTYPE_NOT_PASSWORD ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_HUBNAME_LEN ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  MAX_USERNAME_LEN ; 
 int MD5_SIZE ; 
 int FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*) ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int) ; 

UINT FUNC20(CONNECTION *c, PACK *p)
{
	CEDAR *cedar;
	UCHAR random[SHA1_SIZE];
	char hubname[MAX_HUBNAME_LEN + 1];
	char username[MAX_USERNAME_LEN + 1];
	UCHAR secure_old_password[SHA1_SIZE];
	UCHAR new_password[SHA1_SIZE];
	UCHAR new_password_ntlm[SHA1_SIZE];
	UCHAR check_secure_old_password[SHA1_SIZE];
	UINT ret = ERR_NO_ERROR;
	HUB *hub;
	// Validate arguments
	if (c == NULL || p == NULL)
	{
		return ERR_INTERNAL_ERROR;
	}

	FUNC4(random, c->Random, SHA1_SIZE);
	if (FUNC13(p, "hubname", hubname, sizeof(hubname)) == false ||
		FUNC13(p, "username", username, sizeof(username)) == false ||
		FUNC12(p, "secure_old_password", secure_old_password, sizeof(secure_old_password)) == false ||
		FUNC12(p, "new_password", new_password, sizeof(new_password)) == false)
	{
		return ERR_PROTOCOL_ERROR;
	}

	if (FUNC12(p, "new_password_ntlm", new_password_ntlm, MD5_SIZE) == false)
	{
		FUNC19(new_password_ntlm, sizeof(new_password_ntlm));
	}

	cedar = c->Cedar;

	FUNC11(cedar);
	{
		hub = FUNC5(cedar, hubname);
	}
	FUNC18(cedar);

	if (hub == NULL)
	{
		ret = ERR_HUB_NOT_FOUND;
	}
	else
	{
		char tmp[MAX_SIZE];

		if (FUNC6(hub, "deny_change_user_password") != 0)
		{
			FUNC14(hub);
			return ERR_NOT_ENOUGH_RIGHT;
		}

		FUNC8(tmp, sizeof(tmp), &c->FirstSock->RemoteIP);
		FUNC7(hub, "LH_CHANGE_PASSWORD_1", c->Name, tmp);

		FUNC1(hub);
		{
			USER *u = FUNC0(hub, username);
			if (u == NULL)
			{
				FUNC7(hub, "LH_CHANGE_PASSWORD_2", c->Name, username);
				ret = ERR_OLD_PASSWORD_WRONG;
			}
			else
			{
				FUNC10(u->lock);
				{
					if (u->AuthType	!= AUTHTYPE_PASSWORD)
					{
						// Not a password authentication
						FUNC7(hub, "LH_CHANGE_PASSWORD_3", c->Name, username);
						ret = ERR_USER_AUTHTYPE_NOT_PASSWORD;
					}
					else
					{
						bool fix_password = false;
						if (u->Policy != NULL)
						{
							fix_password = u->Policy->FixPassword;
						}
						else
						{
							if (u->Group != NULL)
							{
								if (u->Group->Policy != NULL)
								{
									fix_password = u->Group->Policy->FixPassword;
								}
							}
						}
						if (fix_password == false)
						{
							// Confirmation of the old password
							AUTHPASSWORD *pw = (AUTHPASSWORD *)u->AuthData;

							FUNC16(check_secure_old_password, pw->HashedKey, random);
							if (FUNC3(check_secure_old_password, secure_old_password, SHA1_SIZE) != 0)
							{
								// Old password is incorrect
								ret = ERR_OLD_PASSWORD_WRONG;
								FUNC7(hub, "LH_CHANGE_PASSWORD_4", c->Name, username);
							}
							else
							{
								// Write a new password
								if (FUNC3(pw->HashedKey, new_password, SHA1_SIZE) != 0 || FUNC9(pw->NtLmSecureHash, MD5_SIZE))
								{
									FUNC4(pw->HashedKey, new_password, SHA1_SIZE);
									FUNC4(pw->NtLmSecureHash, new_password_ntlm, MD5_SIZE);
								}
								FUNC7(hub, "LH_CHANGE_PASSWORD_5", c->Name, username);
							}
						}
						else
						{
							// Password change is prohibited
							ret = ERR_NOT_ENOUGH_RIGHT;
						}
					}
				}
				FUNC17(u->lock);

				FUNC15(u);
			}
		}
		FUNC2(hub);
		FUNC14(hub);
	}

	return ret;
}