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
struct TYPE_2__ {int /*<<< orphan*/  token_id; int /*<<< orphan*/  text; } ;
typedef  TYPE_1__ sql_token ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,size_t*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,...) ; 
 char* FUNC7 (int /*<<< orphan*/ ,size_t*) ; 
 scalar_t__ FUNC8 (char const*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(lua_State *L) {
	sql_token *token = *(sql_token **)FUNC3(L); 
	size_t keysize;
	const char *key = FUNC2(L, 2, &keysize);

    /* TODO: Fix bug
     *  token->text->len may be a large number, lua_pushlstring() would be crash
     *
     */
    //if(0 == lua_checkstack(L, token->text->len))
    //return 0;

    if (FUNC8(key, keysize, FUNC0("text"))) {
        FUNC6(L, FUNC1(token->text));
        return 1;
    } else if (FUNC8(key, keysize, FUNC0("token_id"))) {
        FUNC5(L, token->token_id);
        return 1;
    } else if (FUNC8(key, keysize, FUNC0("token_name"))) {
        size_t token_name_len = 0;
        const char *token_name = FUNC7(token->token_id, &token_name_len);
        FUNC6(L, token_name, token_name_len);
        return 1;
    } else {
        FUNC4(L, "tokens[...] has no %s field", key);
    }

	return 0;
}