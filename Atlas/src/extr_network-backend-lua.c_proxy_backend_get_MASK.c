#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  weight; TYPE_2__* uuid; int /*<<< orphan*/  type; int /*<<< orphan*/  state; int /*<<< orphan*/  addr; int /*<<< orphan*/  connected_clients; } ;
typedef  TYPE_1__ network_backend_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  gsize ;
struct TYPE_4__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(lua_State *L) {
	network_backend_t *backend = *(network_backend_t **)FUNC3(L);
	gsize keysize = 0;
	const char *key = FUNC2(L, 2, &keysize);

	if (FUNC8(key, keysize, FUNC0("connected_clients"))) {
		FUNC4(L, backend->connected_clients);
	} else if (FUNC8(key, keysize, FUNC0("dst"))) {
		FUNC7(L, backend->addr);
	} else if (FUNC8(key, keysize, FUNC0("state"))) {
		FUNC4(L, backend->state);
	} else if (FUNC8(key, keysize, FUNC0("type"))) {
		FUNC4(L, backend->type);
	} else if (FUNC8(key, keysize, FUNC0("uuid"))) {
		if (backend->uuid->len) {
			FUNC5(L, FUNC1(backend->uuid));
		} else {
			FUNC6(L);
		}
	} else if (FUNC8(key, keysize, FUNC0("weight"))) {
		FUNC4(L, backend->weight);
	} else {
		FUNC6(L);
	}

	return 1;
}