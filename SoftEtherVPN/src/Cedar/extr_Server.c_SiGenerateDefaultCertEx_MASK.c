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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  cn ;
typedef  int /*<<< orphan*/  X ;
typedef  int /*<<< orphan*/  NAME ;
typedef  int /*<<< orphan*/  K ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (char*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,char*) ; 

void FUNC10(X **server_x, K **server_k, char *common_name)
{
	X *x;
	K *private_key, *public_key;
	NAME *name;
	char tmp[MAX_SIZE];
	wchar_t cn[MAX_SIZE];
	// Validate arguments
	if (server_x == NULL || server_k == NULL)
	{
		return;
	}

	// Create a key pair
	FUNC7(&private_key, &public_key, 2048);

	if (FUNC4(common_name))
	{
		// Get the host name
		FUNC8(tmp, sizeof(tmp), "server.softether.vpn");
		FUNC3(tmp, sizeof(tmp));
		FUNC9(cn, sizeof(cn), tmp);
	}
	else
	{
		FUNC9(cn, sizeof(cn), common_name);
	}

	name = FUNC5(cn, cn, cn,
		L"US", NULL, NULL);
	x = FUNC6(public_key, private_key, name, FUNC2(), NULL);

	*server_x = x;
	*server_k = private_key;

	FUNC1(name);

	FUNC0(public_key);
}