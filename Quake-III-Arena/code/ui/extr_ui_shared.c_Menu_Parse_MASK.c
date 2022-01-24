#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_6__ {char* string; } ;
typedef  TYPE_1__ pc_token_t ;
typedef  int /*<<< orphan*/  menuDef_t ;
struct TYPE_7__ {int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ *,int) ;} ;
typedef  TYPE_2__ keywordHash_t ;
typedef  int /*<<< orphan*/  itemDef_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  menuParseKeywordHash ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int,TYPE_1__*) ; 

qboolean FUNC5(int handle, menuDef_t *menu) {
	pc_token_t token;
	keywordHash_t *key;

	if (!FUNC4(handle, &token))
		return qfalse;
	if (*token.string != '{') {
		return qfalse;
	}
    
	while ( 1 ) {

		FUNC2(&token, 0, sizeof(pc_token_t));
		if (!FUNC4(handle, &token)) {
			FUNC1(handle, "end of file inside menu\n");
			return qfalse;
		}

		if (*token.string == '}') {
			return qtrue;
		}

		key = FUNC0(menuParseKeywordHash, token.string);
		if (!key) {
			FUNC1(handle, "unknown menu keyword %s", token.string);
			continue;
		}
		if ( !key->func((itemDef_t*)menu, handle) ) {
			FUNC1(handle, "couldn't parse menu keyword %s", token.string);
			return qfalse;
		}
	}
	return qfalse; 	// bk001205 - LCC missing return value
}