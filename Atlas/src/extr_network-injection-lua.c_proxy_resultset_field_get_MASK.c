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
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  gsize ;
struct TYPE_2__ {int /*<<< orphan*/  table; int /*<<< orphan*/  org_table; int /*<<< orphan*/  org_name; int /*<<< orphan*/  name; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ MYSQL_FIELD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(lua_State *L) {
	MYSQL_FIELD *field = *(MYSQL_FIELD **)FUNC2(L);
	gsize keysize = 0;
	const char *key = FUNC1(L, 2, &keysize);
        
	if (FUNC6(key, keysize, FUNC0("type"))) {
		FUNC3(L, field->type);
	} else if (FUNC6(key, keysize, FUNC0("name"))) {
		FUNC5(L, field->name);
	} else if (FUNC6(key, keysize, FUNC0("org_name"))) {
		FUNC5(L, field->org_name);
	} else if (FUNC6(key, keysize, FUNC0("org_table"))) {
		FUNC5(L, field->org_table);
	} else if (FUNC6(key, keysize, FUNC0("table"))) {
		FUNC5(L, field->table);
	} else {
		FUNC4(L);
	}
    
	return 1;
}