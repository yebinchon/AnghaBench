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
typedef  int /*<<< orphan*/  network_mysqld_err_packet_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  GString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  errcode ; 
 int /*<<< orphan*/  errmsg ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sqlstate ; 

__attribute__((used)) static int FUNC10 (lua_State *L) {
	GString *packet;
	network_mysqld_err_packet_t *err_packet;

	FUNC5(L, 1, LUA_TTABLE);

	err_packet = FUNC8();

	FUNC1(err_packet, errmsg);
	FUNC1(err_packet, sqlstate);
	FUNC0(err_packet, errcode);

	packet = FUNC4(NULL);	
	FUNC9(packet, err_packet);

	FUNC7(err_packet);

	FUNC6(L, FUNC2(packet));
	
	FUNC3(packet, TRUE);

	return 1;
}