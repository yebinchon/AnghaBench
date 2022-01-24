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
typedef  int /*<<< orphan*/  filename ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (char*,void**) ; 
 int MAX_QPATH ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 

void FUNC8( void ) {
	char	*f;
	int		len;
	char	filename[MAX_QPATH];

	if (FUNC2 () != 2) {
		FUNC4 ("exec <filename> : execute a script file\n");
		return;
	}

	FUNC7( filename, FUNC3(1), sizeof( filename ) );
	FUNC0( filename, sizeof( filename ), ".cfg" ); 
	len = FUNC6( filename, (void **)&f);
	if (!f) {
		FUNC4 ("couldn't exec %s\n",FUNC3(1));
		return;
	}
	FUNC4 ("execing %s\n",FUNC3(1));
	
	FUNC1 (f);

	FUNC5 (f);
}