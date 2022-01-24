#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * raw_pwds; int /*<<< orphan*/ * raw_ips; } ;
typedef  TYPE_1__ network_backends_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {TYPE_1__* backends; int /*<<< orphan*/  log_path; int /*<<< orphan*/  instance_name; } ;
typedef  TYPE_2__ chassis ;
typedef  int /*<<< orphan*/  GPtrArray ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

void FUNC15(lua_State *L , chassis *chas) {
	network_backends_t **backends_p;

	int stack_top = FUNC3(L);

	/* TODO: if we share "proxy." with other plugins, this may fail to initialize it correctly, 
	 * because maybe they already have registered stuff in there.
	 * It would be better to have different namespaces, or any other way to make sure we initialize correctly.
	 */
	FUNC2(L, "proxy");
	if (FUNC4(L, -1)) {
		FUNC7(L, 1);

		FUNC13(L);
	
		FUNC2(L, "proxy");
	}
	FUNC0(FUNC5(L, -1));

	/* at this point we have set up:
	 *  - the script
	 *  - _G.proxy and a bunch of constants in that table
	 *  - _G.proxy.global
	 */
	
	/**
	 * register proxy.global.backends[]
	 *
	 * @see proxy_backends_get()
	 */
	FUNC1(L, -1, "global");

    // set instance name
	// proxy.global.config.instance , value assigned when cmd start use --instance
	FUNC1(L, -1, "config");

    FUNC8(L, chas->instance_name);
	FUNC9(L, -2, "instance");

    FUNC8(L, chas->log_path);
	FUNC9(L, -2, "logpath");

    FUNC7(L, 1);

    // 
	backends_p = FUNC6(L, sizeof(network_backends_t *));
	*backends_p = chas->backends;

	FUNC11(L);
	FUNC10(L, -2);          /* tie the metatable to the table   (sp -= 1) */

	FUNC9(L, -2, "backends");

	GPtrArray **raw_ips_p = FUNC6(L, sizeof(GPtrArray *));
	*raw_ips_p = chas->backends->raw_ips;
	FUNC12(L);
	FUNC10(L, -2);
	FUNC9(L, -2, "clients");

	GPtrArray **raw_pwds_p = FUNC6(L, sizeof(GPtrArray *));
	*raw_pwds_p = chas->backends->raw_pwds;
	FUNC14(L);
	FUNC10(L, -2);
	FUNC9(L, -2, "pwds");

	FUNC7(L, 2);  /* _G.proxy.global and _G.proxy */

	FUNC0(FUNC3(L) == stack_top);
}