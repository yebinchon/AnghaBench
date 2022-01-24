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
typedef  int /*<<< orphan*/  key ;

/* Variables and functions */
 char* FUNC0 (char**) ; 
 char* FUNC1 (char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 int /*<<< orphan*/  MAX_ARENAS ; 
 int MAX_INFO_STRING ; 
 int MAX_TOKEN_CHARS ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*) ; 
 char* FUNC9 (char*,int /*<<< orphan*/ ) ; 

int FUNC10( char *buf, int max, char *infos[] ) {
	char	*token;
	int		count;
	char	key[MAX_TOKEN_CHARS];
	char	info[MAX_INFO_STRING];

	count = 0;

	while ( 1 ) {
		token = FUNC0( &buf );
		if ( !token[0] ) {
			break;
		}
		if ( FUNC6( token, "{" ) ) {
			FUNC2( "Missing { in info file\n" );
			break;
		}

		if ( count == max ) {
			FUNC2( "Max infos exceeded\n" );
			break;
		}

		info[0] = '\0';
		while ( 1 ) {
			token = FUNC1( &buf, qtrue );
			if ( !token[0] ) {
				FUNC2( "Unexpected end of info file\n" );
				break;
			}
			if ( !FUNC6( token, "}" ) ) {
				break;
			}
			FUNC5( key, token, sizeof( key ) );

			token = FUNC1( &buf, qfalse );
			if ( !token[0] ) {
				FUNC7( token, "<NULL>" );
			}
			FUNC4( info, key, token );
		}
		//NOTE: extra space for arena number
		infos[count] = FUNC3(FUNC8(info) + FUNC8("\\num\\") + FUNC8(FUNC9("%d", MAX_ARENAS)) + 1);
		if (infos[count]) {
			FUNC7(infos[count], info);
			count++;
		}
	}
	return count;
}