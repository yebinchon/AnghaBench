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
typedef  scalar_t__ qboolean ;
struct TYPE_6__ {size_t numJoinGameTypes; size_t numGameTypes; TYPE_2__* gameTypes; TYPE_1__* joinGameTypes; } ;
struct TYPE_5__ {int /*<<< orphan*/  gtEnum; int /*<<< orphan*/  gameType; } ;
struct TYPE_4__ {int /*<<< orphan*/  gtEnum; int /*<<< orphan*/  gameType; } ;

/* Variables and functions */
 char* FUNC0 (char**,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char**,int /*<<< orphan*/ *) ; 
 size_t MAX_GAMETYPES ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char**,int /*<<< orphan*/ *) ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 
 TYPE_3__ uiInfo ; 

__attribute__((used)) static qboolean FUNC5(char **p, qboolean join) {
	char *token;

	token = FUNC0(p, qtrue);

	if (token[0] != '{') {
		return qfalse;
	}

	if (join) {
		uiInfo.numJoinGameTypes = 0;
	} else {
		uiInfo.numGameTypes = 0;
	}

	while ( 1 ) {
		token = FUNC0(p, qtrue);

		if (FUNC3(token, "}") == 0) {
			return qtrue;
		}

		if ( !token || token[0] == 0 ) {
			return qfalse;
		}

		if (token[0] == '{') {
			// two tokens per line, character name and sex
			if (join) {
				if (!FUNC4(p, &uiInfo.joinGameTypes[uiInfo.numJoinGameTypes].gameType) || !FUNC2(p, &uiInfo.joinGameTypes[uiInfo.numJoinGameTypes].gtEnum)) {
					return qfalse;
				}
			} else {
				if (!FUNC4(p, &uiInfo.gameTypes[uiInfo.numGameTypes].gameType) || !FUNC2(p, &uiInfo.gameTypes[uiInfo.numGameTypes].gtEnum)) {
					return qfalse;
				}
			}
    
			if (join) {
				if (uiInfo.numJoinGameTypes < MAX_GAMETYPES) {
					uiInfo.numJoinGameTypes++;
				} else {
					FUNC1("Too many net game types, last one replace!\n");
				}		
			} else {
				if (uiInfo.numGameTypes < MAX_GAMETYPES) {
					uiInfo.numGameTypes++;
				} else {
					FUNC1("Too many game types, last one replace!\n");
				}		
			}
     
			token = FUNC0(p, qtrue);
			if (token[0] != '}') {
				return qfalse;
			}
		}
	}
	return qfalse;
}