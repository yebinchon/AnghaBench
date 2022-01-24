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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  int /*<<< orphan*/  RPC ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,scalar_t__) ; 
 scalar_t__ ERR_CONNECT_FAILED ; 
 scalar_t__ ERR_DISCONNECTED ; 
 scalar_t__ ERR_INTERNAL_ERROR ; 
 scalar_t__ ERR_NO_ERROR ; 
 scalar_t__ ERR_PROTOCOL_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int TIMEOUT_INFINITE ; 

RPC *FUNC13(CEDAR *cedar, char *hostname, UINT port, void *hashed_password, UINT *err)
{
	UCHAR secure_password[SHA1_SIZE];
	UCHAR random[SHA1_SIZE];
	SOCK *sock;
	RPC *rpc;
	PACK *p;
	UINT error;
	// Validate arguments
	if (cedar == NULL || hostname == NULL || port == 0 || hashed_password == NULL || err == NULL)
	{
		if (err != NULL)
		{
			*err = ERR_INTERNAL_ERROR;
		}
		return NULL;
	}

	// Connection
	sock = FUNC0(hostname, port);
	if (sock == NULL)
	{
		*err = ERR_CONNECT_FAILED;
		return NULL;
	}

	if (FUNC12(sock, NULL, NULL) == false)
	{
		*err = ERR_PROTOCOL_ERROR;
		FUNC8(sock);
		return NULL;
	}

	FUNC10(sock, 5000);

	p = FUNC3(sock);
	if (p == NULL)
	{
		*err = ERR_DISCONNECTED;
		FUNC8(sock);
		return NULL;
	}

	if (FUNC7(p, "auth_random", random, SHA1_SIZE) == false)
	{
		FUNC1(p);
		*err = ERR_PROTOCOL_ERROR;
		FUNC8(sock);
		return NULL;
	}

	FUNC1(p);

	FUNC9(secure_password, hashed_password, random);

	p = FUNC5();
	FUNC6(p, "secure_password", secure_password, SHA1_SIZE);

	if (FUNC4(sock, p) == false)
	{
		FUNC1(p);
		*err = ERR_DISCONNECTED;
		FUNC8(sock);
		return NULL;
	}

	FUNC1(p);

	p = FUNC3(sock);
	if (p == NULL)
	{
		*err = ERR_DISCONNECTED;
		FUNC8(sock);
		return NULL;
	}

	error = FUNC2(p);

	FUNC1(p);

	if (error != ERR_NO_ERROR)
	{
		*err = error;
		FUNC8(sock);
		return NULL;
	}

	FUNC10(sock, TIMEOUT_INFINITE);

	rpc = FUNC11(sock, NULL);
	FUNC8(sock);

	return rpc;
}