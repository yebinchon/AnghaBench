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
typedef  int /*<<< orphan*/  sql_token ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {scalar_t__ len; int /*<<< orphan*/ ** pdata; } ;
typedef  TYPE_1__ GPtrArray ;

/* Variables and functions */
 scalar_t__ G_MAXINT ; 
 int /*<<< orphan*/  LUA_TNIL ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(lua_State *L) {
	GPtrArray *tokens = *(GPtrArray **)FUNC1(L); 
	int ndx = FUNC0(L, 2);
	sql_token *token;

	FUNC2(L, 3, LUA_TNIL); /* for now we can only use = nil */

	if (tokens->len > G_MAXINT) {
		return 0;
	}

	/* lua uses 1 is starting index */
	if (ndx < 1 || ndx > (int)tokens->len) {
		return 0;
	}

	token = tokens->pdata[ndx - 1];
	if (NULL != token) {
		FUNC3(token);
		tokens->pdata[ndx - 1] = NULL;
	}

	return 0;
}