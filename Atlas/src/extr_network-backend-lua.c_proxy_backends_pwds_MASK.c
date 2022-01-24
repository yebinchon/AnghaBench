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
typedef  int guint ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  gboolean ;

/* Variables and functions */
#define  ADD_ENPWD 130 
#define  ADD_PWD 129 
 int ERR_USER_EXIST ; 
 int ERR_USER_NOT_EXIST ; 
 int /*<<< orphan*/  FALSE ; 
#define  REMOVE_PWD 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(lua_State *L) {
	network_backends_t *bs = *(network_backends_t **)FUNC1(L);
	guint type  = FUNC3(L, -1);
	gchar *pwd  = FUNC4(L, -2);
	gchar *user = FUNC4(L, -3);

	gboolean is_user_exist = FUNC7(bs, user);
	int ret = -1;

	switch (type) {
	case ADD_PWD:
		if (is_user_exist) {
			ret = ERR_USER_EXIST;
		} else {
			ret = FUNC5(bs, user, pwd, FALSE);
		}
		break;

	case ADD_ENPWD:
		if (is_user_exist) {
			ret = ERR_USER_EXIST;
		} else {
			ret = FUNC5(bs, user, pwd, TRUE);
		}
		break;

	case REMOVE_PWD:
		if (!is_user_exist) {
			ret = ERR_USER_NOT_EXIST;
		} else {
			ret = FUNC6(bs, user);
		}
		break;

	default:
		FUNC0();
	}

	FUNC2(L, ret);
	return 1;
}