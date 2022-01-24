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
 char* FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 scalar_t__ FUNC2 (char*,char*) ; 

void FUNC3( char **buf_p, char *match ) {
	char	*token;

	token = FUNC0( buf_p );
	if ( FUNC2( token, match ) ) {
		FUNC1( ERR_DROP, "MatchToken: %s != %s", token, match );
	}
}