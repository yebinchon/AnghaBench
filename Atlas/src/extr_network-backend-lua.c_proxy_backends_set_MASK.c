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
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  gsize ;
typedef  int /*<<< orphan*/  gchar ;

/* Variables and functions */
 int /*<<< orphan*/  BACKEND_TYPE_RO ; 
 int /*<<< orphan*/  BACKEND_TYPE_RW ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(lua_State *L) {
	network_backends_t *bs = *(network_backends_t **)FUNC4(L);
	gsize keysize = 0;
	const char *key = FUNC3(L, 2, &keysize);

	if (FUNC13(key, keysize, FUNC0("addslave"))) {
		gchar *address = FUNC2(FUNC7(L, -1));
		FUNC8(bs, address, BACKEND_TYPE_RO);
		FUNC1(address);
	} else if (FUNC13(key, keysize, FUNC0("addmaster"))) {
		gchar *address = FUNC2(FUNC7(L, -1));
		FUNC8(bs, address, BACKEND_TYPE_RW);
		FUNC1(address);
	} else if (FUNC13(key, keysize, FUNC0("removebackend"))) {
		FUNC10(bs, FUNC6(L, -1));
	} else if (FUNC13(key, keysize, FUNC0("addclient"))) {
		gchar *address = FUNC2(FUNC7(L, -1));
		FUNC9(bs, address);
		FUNC1(address);
	} else if (FUNC13(key, keysize, FUNC0("removeclient"))) {
		gchar *address = FUNC2(FUNC7(L, -1));
		FUNC11(bs, address);
		FUNC1(address);
	} else if (FUNC13(key, keysize, FUNC0("saveconfig"))) {
		FUNC12(bs);
	} else {
		return FUNC5(L, "proxy.global.backends.%s is not writable", key);
	}
	return 1;
}