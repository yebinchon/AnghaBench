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
typedef  int /*<<< orphan*/  network_mysqld_auth_challenge ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  GString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  capabilities ; 
 int /*<<< orphan*/  challenge ; 
 int /*<<< orphan*/  charset ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  protocol_version ; 
 int /*<<< orphan*/  server_status ; 
 int /*<<< orphan*/  server_version ; 
 int /*<<< orphan*/  thread_id ; 

__attribute__((used)) static int FUNC10 (lua_State *L) {
	GString *packet;
	network_mysqld_auth_challenge *auth_challenge;

	FUNC5(L, 1, LUA_TTABLE);

	auth_challenge = FUNC8();

	FUNC0(auth_challenge, protocol_version);
	FUNC0(auth_challenge, server_version);
	FUNC0(auth_challenge, thread_id);
	FUNC0(auth_challenge, capabilities);
	FUNC0(auth_challenge, charset);
	FUNC0(auth_challenge, server_status);

	FUNC1(auth_challenge, challenge);

	packet = FUNC4(NULL);	
	FUNC9(packet, auth_challenge);
	
	FUNC7(auth_challenge);

	FUNC6(L, FUNC2(packet));
	
	FUNC3(packet, TRUE);

	return 1;
}