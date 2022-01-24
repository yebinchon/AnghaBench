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
typedef  int /*<<< orphan*/  proxy_resultset_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  GRef ;
typedef  int /*<<< orphan*/  GDestroyNotify ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  methods_proxy_resultset ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ proxy_resultset_free ; 

__attribute__((used)) static int FUNC5(lua_State *L, proxy_resultset_t *_res) {
	GRef **ref_p;
	GRef *ref;

	ref = FUNC0();
	FUNC1(ref, _res, (GDestroyNotify)proxy_resultset_free);
	
	ref_p = FUNC2(L, sizeof(GRef *));
	*ref_p = ref;

	FUNC4(L, methods_proxy_resultset);
	FUNC3(L, -2);

	return 1;
}