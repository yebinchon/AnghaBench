#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_3__* fields; } ;
typedef  TYPE_1__ proxy_resultset_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int lua_Integer ;
typedef  int /*<<< orphan*/  field ;
struct TYPE_6__ {scalar_t__ len; int /*<<< orphan*/ ** pdata; } ;
struct TYPE_5__ {TYPE_1__* udata; } ;
typedef  int /*<<< orphan*/  MYSQL_FIELD ;
typedef  TYPE_2__ GRef ;
typedef  TYPE_3__ GPtrArray ;

/* Variables and functions */
 scalar_t__ G_MAXINT ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  methods_proxy_resultset_fields_field ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(lua_State *L) {
	GRef *ref = *(GRef **)FUNC1(L);
	proxy_resultset_t *res = ref->udata;
	GPtrArray *fields = res->fields;
	MYSQL_FIELD *field;
	MYSQL_FIELD **field_p;
	lua_Integer ndx = FUNC0(L, 2);

	/* protect the compare */
	if (fields->len > G_MAXINT) {
		return 0;
	}
    
	if (ndx < 1 || ndx > (lua_Integer)fields->len) {
		FUNC3(L);
        
		return 1;
	}
    
	field = fields->pdata[ndx - 1]; /** lua starts at 1, C at 0 */
    
	field_p = FUNC2(L, sizeof(field));
	*field_p = field;
    
	FUNC5(L, methods_proxy_resultset_fields_field);
	FUNC4(L, -2);
    
	return 1;
}