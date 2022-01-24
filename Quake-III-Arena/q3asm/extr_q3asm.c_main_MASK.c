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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 double FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * asmFileNames ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 size_t numAsmFiles ; 
 int /*<<< orphan*/  outputFilename ; 
 int /*<<< orphan*/  FUNC6 (char*,double) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

int FUNC9( int argc, char **argv ) {
	int			i;
	double		start, end;

//	_chdir( "/quake3/jccode/cgame/lccout" );	// hack for vc profiler

	if ( argc < 2 ) {
		FUNC1( "usage: q3asm [-o output] <files> or q3asm -f <listfile>\n" );
	}

	start = FUNC2 ();
	FUNC3();

	// default filename is "q3asm"
	FUNC8( outputFilename, "q3asm" );
	numAsmFiles = 0;	

	for ( i = 1 ; i < argc ; i++ ) {
		if ( argv[i][0] != '-' ) {
			break;
		}
		if ( !FUNC7( argv[i], "-o" ) ) {
			if ( i == argc - 1 ) {
				FUNC1( "-o must preceed a filename" );
			}
			FUNC8( outputFilename, argv[ i+1 ] );
			i++;
			continue;
		}

		if ( !FUNC7( argv[i], "-f" ) ) {
			if ( i == argc - 1 ) {
				FUNC1( "-f must preceed a filename" );
			}
			FUNC4( argv[ i+1 ] );
			i++;
			continue;
		}
		FUNC1( "Unknown option: %s", argv[i] );
	}

	// the rest of the command line args are asm files
	for ( ; i < argc ; i++ ) {
		asmFileNames[ numAsmFiles ] = FUNC5( argv[ i ] );
		numAsmFiles++;
	}

	FUNC0();

	end = FUNC2 ();
	FUNC6 ("%5.0f seconds elapsed\n", end-start);

	return 0;
}