#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {int /*<<< orphan*/  type; void* name; } ;
typedef  TYPE_1__ MYSQL_FIELD ;
typedef  int /*<<< orphan*/  GPtrArray ;

/* Variables and functions */
 int /*<<< orphan*/  FIELD_TYPE_VAR_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 void* FUNC1 (char*) ; 
 void* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC7 () ; 

__attribute__((used)) static int FUNC8(lua_State *L, GPtrArray *fields) {
	MYSQL_FIELD *field = NULL;

	field = FUNC7();
	if (FUNC4(L, -2) && !FUNC3(L, -2)) {
		/* is-string is true for strings AND numbers
		 * but a tostring() is changing a number into a 
		 * string and that trashes the lua_next() call
		 */
		field->name = FUNC1(FUNC6(L, -2));
	} else if (FUNC3(L, -2)) {
		field->name = FUNC2("%ld", FUNC5(L, -2));
	} else {
		/* we don't know how to convert the key */
		field->name = FUNC1("(hmm)");
	}
	field->type = FIELD_TYPE_VAR_STRING; /* STRING matches all values */
	FUNC0(fields, field);

	return 0;
}