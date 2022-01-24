#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int proxy_queue_add_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {int /*<<< orphan*/  resultset_is_needed; } ;
typedef  TYPE_1__ injection ;
typedef  int /*<<< orphan*/  GString ;
typedef  int /*<<< orphan*/  GQueue ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
#define  PROXY_QUEUE_ADD_APPEND 129 
#define  PROXY_QUEUE_ADD_PREPEND 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 
 TYPE_1__* FUNC3 (int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int,size_t*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  lua_istable ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(lua_State *L, proxy_queue_add_t type) {
	GQueue *q = *(GQueue **)FUNC7(L);
	int resp_type = FUNC5(L, 2);
	size_t str_len;
	const char *str = FUNC6(L, 3, &str_len);
	injection *inj;

	GString *query = FUNC2(str_len);
	FUNC1(query, str, str_len);

	inj = FUNC3(resp_type, query);
	inj->resultset_is_needed = FALSE;

	/* check the 4th (last) param */
	switch (FUNC8(L, lua_istable, 4, -1)) {
	case -1:
		/* none or nil */
		break;
	case 1:
		FUNC10(L, 4, "resultset_is_needed");
		if (FUNC12(L, -1)) {
			/* no defined */
		} else if (FUNC11(L, -1)) {
			inj->resultset_is_needed = FUNC14(L, -1);
		} else {
			switch (type) {
			case PROXY_QUEUE_ADD_APPEND:
				return FUNC4(L, 4, ":append(..., { resultset_is_needed = boolean } ), is %s");
			case PROXY_QUEUE_ADD_PREPEND:
				return FUNC4(L, 4, ":prepend(..., { resultset_is_needed = boolean } ), is %s");
			}
		}

		FUNC13(L, 1);
		break;
	default:
		FUNC17(L);
		FUNC9(L, 4, "table");
		break;
	}

	switch (type) {
	case PROXY_QUEUE_ADD_APPEND:
		FUNC15(q, inj);
		return 0;
	case PROXY_QUEUE_ADD_PREPEND:
		FUNC16(q, inj);
		return 0;
	}

	FUNC0();
}