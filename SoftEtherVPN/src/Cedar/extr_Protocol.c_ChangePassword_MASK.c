#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_6__ {int /*<<< orphan*/  Random; int /*<<< orphan*/ * FirstSock; } ;
struct TYPE_5__ {TYPE_3__* Connection; } ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  TYPE_1__ SESSION ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  CLIENT_OPTION ;
typedef  int /*<<< orphan*/  CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_DISCONNECTED ; 
 int /*<<< orphan*/  ERR_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int MD5_SIZE ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

UINT FUNC13(CEDAR *cedar, CLIENT_OPTION *o, char *hubname, char *username, char *old_pass, char *new_pass)
{
	UINT ret = ERR_NO_ERROR;
	UCHAR old_password[SHA1_SIZE];
	UCHAR secure_old_password[SHA1_SIZE];
	UCHAR new_password[SHA1_SIZE];
	UCHAR new_password_ntlm[MD5_SIZE];
	SOCK *sock;
	SESSION *s;
	// Validate arguments
	if (cedar == NULL || o == NULL || hubname == NULL || username == NULL || old_pass == NULL || new_pass == NULL)
	{
		return ERR_INTERNAL_ERROR;
	}


	// Create a session
	s = FUNC7(cedar, o, &ret, NULL);

	if (s != NULL)
	{
		PACK *p = FUNC6();

		sock = s->Connection->FirstSock;

		FUNC3(old_password, username, old_pass);
		FUNC12(secure_old_password, old_password, s->Connection->Random);
		FUNC3(new_password, username, new_pass);
		FUNC1(new_password_ntlm, new_pass);

		FUNC8(p, s->Connection);

		FUNC10(p, "method", "password");
		FUNC10(p, "hubname", hubname);
		FUNC10(p, "username", username);
		FUNC9(p, "secure_old_password", secure_old_password, SHA1_SIZE);
		FUNC9(p, "new_password", new_password, SHA1_SIZE);
		FUNC9(p, "new_password_ntlm", new_password_ntlm, MD5_SIZE);

		if (FUNC5(sock, p))
		{
			PACK *p = FUNC4(sock);
			if (p == NULL)
			{
				ret = ERR_DISCONNECTED;
			}
			else
			{
				ret = FUNC2(p);
			}
			FUNC0(p);
		}
		else
		{
			ret = ERR_DISCONNECTED;
		}
		FUNC0(p);

		FUNC11(s);
	}

	return ret;
}