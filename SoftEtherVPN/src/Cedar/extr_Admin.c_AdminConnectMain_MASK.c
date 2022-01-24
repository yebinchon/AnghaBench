#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  secure_password ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_7__ {int /*<<< orphan*/  Random; int /*<<< orphan*/ * FirstSock; } ;
struct TYPE_6__ {TYPE_3__* Connection; } ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  TYPE_1__ SESSION ;
typedef  int /*<<< orphan*/  RPC_WINVER ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  CLIENT_OPTION ;
typedef  int /*<<< orphan*/  CEDAR ;

/* Variables and functions */
 scalar_t__ ERR_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,char*,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 

SESSION *FUNC15(CEDAR *cedar, CLIENT_OPTION *o, char *hubname, void *hashed_password, UINT *err, char *client_name, void *hWnd, bool *empty_password)
{
	UCHAR secure_password[SHA1_SIZE];
	SESSION *s;
	SOCK *sock;
	PACK *p;
	RPC_WINVER ver;
	// connect
	s = FUNC6(cedar, o, err, client_name, hWnd);
	if (s == NULL)
	{
		return NULL;
	}

	// Get socket
	sock = s->Connection->FirstSock;

	// Generate connect method
	p = FUNC5();

	FUNC9(p, s->Connection);

	FUNC11(p, "method", "admin");
	FUNC8(p, "accept_empty_password", true);

	// Windows version on client
	FUNC2(&ver);
	FUNC7(p, &ver);

	// Secure Password
	FUNC14(secure_password, hashed_password, s->Connection->Random);

	FUNC10(p, "secure_password", secure_password, sizeof(secure_password));

	// HUB name
	if (hubname != NULL)
	{
		FUNC11(p, "hubname", hubname);
	}

	if (FUNC4(sock, p) == false)
	{
		// disconnect
		FUNC0(p);
		FUNC13(s);
		*err = ERR_DISCONNECTED;
		return NULL;
	}

	FUNC0(p);

	p = FUNC3(sock);
	if (p == NULL)
	{
		// disconnect
		FUNC13(s);
		*err = ERR_DISCONNECTED;
		return NULL;
	}

	if (FUNC1(p) != 0)
	{
		// error
		FUNC13(s);
		*err = FUNC1(p);
		FUNC0(p);
		return NULL;
	}

	if (empty_password != NULL)
	{
		*empty_password = FUNC12(p, "empty_password");
	}

	FUNC0(p);

	return s;
}