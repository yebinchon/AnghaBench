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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

void FUNC8( int count, char **fileNames ) {
	int		i;
	char	source[1024];
	int			size;
	FILE		*f;

	if ( count < 1 ) {
		FUNC4( "No files to dump info for.\n");
		return;
	}

	for ( i = 0 ; i < count ; i++ ) {
		FUNC4 ("---------------------\n");
		FUNC7 (source, fileNames[ i ] );
		FUNC0 (source, ".bsp");
		f = FUNC6 (source, "rb");
		if (f)
		{
			size = FUNC3 (f);
			FUNC5 (f);
		}
		else
			size = 0;
		FUNC4 ("%s: %i\n", source, size);
		
		FUNC1 (source);		
		FUNC2 ();
		FUNC4 ("---------------------\n");
	}
}