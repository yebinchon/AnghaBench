#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  uuid; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ network_backend_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  gsize ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int,size_t*) ; 
 scalar_t__ FUNC10 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(lua_State *L) {
	network_backend_t *backend = *(network_backend_t **)FUNC4(L);
	gsize keysize = 0;
	const char *key = FUNC3(L, 2, &keysize);

	if (FUNC10(key, keysize, FUNC0("state"))) {
		backend->state = FUNC8(L, -1);
	} else if (FUNC10(key, keysize, FUNC0("uuid"))) {
		if (FUNC7(L, -1)) {
			size_t s_len = 0;
			const char *s = FUNC9(L, -1, &s_len);

			FUNC1(backend->uuid, s, s_len);
		} else if (FUNC6(L, -1)) {
			FUNC2(backend->uuid, 0);
		} else {
			return FUNC5(L, "proxy.global.backends[...].%s has to be a string", key);
		}
	} else {
		return FUNC5(L, "proxy.global.backends[...].%s is not writable", key);
	}
	return 1;
}