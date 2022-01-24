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
typedef  int /*<<< orphan*/  network_backends_t ;
typedef  int /*<<< orphan*/  network_backend_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  backend ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(lua_State *L) {
	network_backend_t *backend; 
	network_backend_t **backend_p;

	network_backends_t *bs = *(network_backends_t **)FUNC1(L);
	int backend_ndx = FUNC0(L, 2) - 1; /** lua is indexes from 1, C from 0 */
	
	/* check that we are in range for a _int_ */
	if (NULL == (backend = FUNC6(bs, backend_ndx))) {
		FUNC3(L);

		return 1;
	}

	backend_p = FUNC2(L, sizeof(backend)); /* the table underneath proxy.global.backends[ndx] */
	*backend_p = backend;

	FUNC5(L);
	FUNC4(L, -2);

	return 1;
}