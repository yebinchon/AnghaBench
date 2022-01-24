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
 int FUNC0 (char*) ; 
 int MAX_LINE_LENGTH ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 char* token ; 

int	FUNC3(void) {
	int		i, j;
	char	sym[MAX_LINE_LENGTH];
	int		v;

	if ( token[0] == '-' ) {
		i = 1;
	} else {
		i = 0;
	}

	for ( ; i < MAX_LINE_LENGTH ; i++ ) {
		if ( token[i] == '+' || token[i] == '-' || token[i] == 0 ) {
			break;
		}
	}

	FUNC2( sym, token, i );
	sym[i] = 0;

	if ( ( sym[0] >= '0' && sym[0] <= '9' ) || sym[0] == '-' ) {
		v = FUNC1( sym );
	} else {
		v = FUNC0( sym );
	}

	// parse add / subtract offsets
	while ( token[i] != 0 ) {
		for ( j = i + 1 ; j < MAX_LINE_LENGTH ; j++ ) {
			if ( token[j] == '+' || token[j] == '-' || token[j] == 0 ) {
				break;
			}
		}

		FUNC2( sym, token+i+1, j-i-1 );
		sym[j-i-1] = 0;

		if ( token[i] == '+' ) {
			v += FUNC1( sym );
		}
		if ( token[i] == '-' ) {
			v -= FUNC1( sym );
		}
		i = j;
	}

	return v;
}