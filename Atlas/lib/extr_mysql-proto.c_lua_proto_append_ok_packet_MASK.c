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
typedef  int /*<<< orphan*/  network_mysqld_ok_packet_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  GString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  affected_rows ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  insert_id ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  server_status ; 
 int /*<<< orphan*/  warnings ; 

__attribute__((used)) static int FUNC9 (lua_State *L) {
	GString *packet;
	network_mysqld_ok_packet_t *ok_packet;

	FUNC4(L, 1, LUA_TTABLE);

	ok_packet = FUNC7();

	FUNC0(ok_packet, server_status);
	FUNC0(ok_packet, insert_id);
	FUNC0(ok_packet, warnings);
	FUNC0(ok_packet, affected_rows);

	packet = FUNC3(NULL);	
	FUNC8(packet, ok_packet);

	FUNC6(ok_packet);
	
	FUNC5(L, FUNC1(packet));
	
	FUNC2(packet, TRUE);

	return 1;
}