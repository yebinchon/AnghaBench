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
struct luaL_reg {char* member_0; int /*<<< orphan*/ * member_1; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
#define  proxy_clients_exist 130 
#define  proxy_clients_get 129 
#define  proxy_clients_len 128 
 int FUNC0 (int /*<<< orphan*/ *,struct luaL_reg const*) ; 

int FUNC1(lua_State *L) {
	static const struct luaL_reg methods[] = {
		{ "__index", proxy_clients_get },
		{ "__len", proxy_clients_len },
		{ "__call", proxy_clients_exist },
		{ NULL, NULL },
	};

	return FUNC0(L, methods);
}