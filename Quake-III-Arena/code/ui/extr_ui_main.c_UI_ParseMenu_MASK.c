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
struct TYPE_4__ {char* string; } ;
typedef  TYPE_1__ pc_token_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int,TYPE_1__*) ; 

void FUNC8(const char *menuFile) {
	int handle;
	pc_token_t token;

	FUNC1("Parsing menu file:%s\n", menuFile);

	handle = FUNC6(menuFile);
	if (!handle) {
		return;
	}

	while ( 1 ) {
		FUNC4(&token, 0, sizeof(pc_token_t));
		if (!FUNC7( handle, &token )) {
			break;
		}

		//if ( Q_stricmp( token, "{" ) ) {
		//	Com_Printf( "Missing { in menu file\n" );
		//	break;
		//}

		//if ( menuCount == MAX_MENUS ) {
		//	Com_Printf( "Too many menus!\n" );
		//	break;
		//}

		if ( token.string[0] == '}' ) {
			break;
		}

		if (FUNC3(token.string, "assetGlobalDef") == 0) {
			if (FUNC0(handle)) {
				continue;
			} else {
				break;
			}
		}

		if (FUNC3(token.string, "menudef") == 0) {
			// start a new menu
			FUNC2(handle);
		}
	}
	FUNC5(handle);
}