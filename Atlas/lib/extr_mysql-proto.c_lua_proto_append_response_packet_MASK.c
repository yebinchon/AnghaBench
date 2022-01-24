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
typedef  int /*<<< orphan*/  network_mysqld_auth_response ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  GString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  capabilities ; 
 int /*<<< orphan*/  charset ; 
 int /*<<< orphan*/  database ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max_packet_size ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  response ; 
 int /*<<< orphan*/  username ; 

__attribute__((used)) static int FUNC11 (lua_State *L) {
	GString *packet;
	network_mysqld_auth_response *auth_response;

	FUNC5(L, 1, LUA_TTABLE);

	packet = FUNC4(NULL);	
	auth_response = FUNC9();

	FUNC0(auth_response, capabilities);
	FUNC0(auth_response, max_packet_size);
	FUNC0(auth_response, charset);

	FUNC1(auth_response, username);
	FUNC1(auth_response, response);
	FUNC1(auth_response, database);

	if (FUNC10(packet, auth_response)) {
		FUNC8(auth_response);
		FUNC3(packet, TRUE);

		FUNC6(L, "to_response_packet() failed");
        FUNC3(packet, TRUE);
		return 0;
	}
	
	FUNC8(auth_response);

	FUNC7(L, FUNC2(packet));
	
	FUNC3(packet, TRUE);

	return 1;
}