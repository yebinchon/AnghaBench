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
typedef  int /*<<< orphan*/  retcode ;
typedef  int /*<<< orphan*/  response ;
typedef  int /*<<< orphan*/  rand ;
typedef  scalar_t__ UINT ;
typedef  int UCHAR ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  int /*<<< orphan*/  RPC ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,scalar_t__) ; 
 scalar_t__ EL_ADMIN_PORT ; 
 scalar_t__ ERR_AUTH_FAILED ; 
 scalar_t__ ERR_CONNECT_FAILED ; 
 scalar_t__ ERR_INTERNAL_ERROR ; 
 scalar_t__ ERR_NO_ERROR ; 
 scalar_t__ ERR_PROTOCOL_ERROR ; 
 int FUNC1 (int) ; 
 int INFINITE ; 
 int FUNC2 (int /*<<< orphan*/ *,int*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int*,int) ; 

UINT FUNC11(char *host, UINT port, char *password, RPC **rpc)
{
	SOCK *s;
	UCHAR password_hash[SHA1_SIZE];
	UCHAR rand[SHA1_SIZE];
	UCHAR response[SHA1_SIZE];
	bool retcode;
	// Validate arguments
	if (host == NULL)
	{
		host = "localhost";
	}
	if (port == 0)
	{
		port = EL_ADMIN_PORT;
	}
	if (password == NULL)
	{
		password = "";
	}
	if (rpc == NULL)
	{
		return ERR_INTERNAL_ERROR;
	}

	// Connect to the server
	s = FUNC0(host, port);
	if (s == NULL)
	{
		// Connection failure
		return ERR_CONNECT_FAILED;
	}

	FUNC6(s, 5000);

	// Hash the password
	FUNC7(password_hash, password, FUNC9(password));

	// Receive the random number
	FUNC10(rand, sizeof(rand));
	(void)FUNC2(s, rand, sizeof(rand), false);
	FUNC4(response, password_hash, rand);

	// Send a response
	FUNC5(s, response, sizeof(response), false);

	// Receive results
	retcode = false;
	if (FUNC2(s, &retcode, sizeof(retcode), false) == false)
	{
		// Disconnect
		FUNC3(s);
		return ERR_PROTOCOL_ERROR;
	}
	retcode = FUNC1(retcode);

	if (retcode == false)
	{
		// Password incorrect
		FUNC3(s);
		return ERR_AUTH_FAILED;
	}

	// Successful connection
	FUNC6(s, INFINITE);

	*rpc = FUNC8(s, NULL);

	FUNC3(s);

	return ERR_NO_ERROR;
}