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

/* Variables and functions */
 char* FUNC0 (char**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char**,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

__attribute__((used)) static void FUNC5(const char *teamFile) {
	char	*token;
	char *p;
	char *buff = NULL;
	//int mode = 0; TTimo: unused

	buff = FUNC2(teamFile);
	if (!buff) {
		return;
	}

	p = buff;

	while ( 1 ) {
		token = FUNC0( &p, qtrue );
		if( !token || token[0] == 0 || token[0] == '}') {
			break;
		}

		if ( FUNC4( token, "}" ) == 0 ) {
			break;
		}

		if (FUNC4(token, "gametypes") == 0) {

			if (FUNC1(&p, qfalse)) {
				continue;
			} else {
				break;
			}
		}

		if (FUNC4(token, "joingametypes") == 0) {

			if (FUNC1(&p, qtrue)) {
				continue;
			} else {
				break;
			}
		}

		if (FUNC4(token, "maps") == 0) {
			// start a new menu
			FUNC3(&p);
		}

	}
}