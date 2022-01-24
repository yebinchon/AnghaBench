#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int segmentBase; int imageUsed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 size_t BSSSEG ; 
 size_t DATASEG ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 char* FUNC3 (char*) ; 
 size_t LITSEG ; 
 int /*<<< orphan*/  FUNC4 (char*,void**) ; 
 int MAX_OS_PATH ; 
 int NUM_SEGMENTS ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char** asmFileNames ; 
 char** asmFiles ; 
 int currentFileIndex ; 
 scalar_t__ currentFileLine ; 
 char* currentFileName ; 
 scalar_t__ instructionCount ; 
 int numAsmFiles ; 
 char* outputFilename ; 
 int passNumber ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 TYPE_1__* segment ; 
 scalar_t__ stackSize ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

void FUNC9( void ) {
	int		i;
	char	filename[MAX_OS_PATH];
	char		*ptr;

	FUNC7( "outputFilename: %s\n", outputFilename );

	for ( i = 0 ; i < numAsmFiles ; i++ ) {
		FUNC8( filename, asmFileNames[ i ] );
		FUNC1( filename, ".asm" );
		FUNC4( filename, (void **)&asmFiles[i] );
	}

	// assemble
	for ( passNumber = 0 ; passNumber < 2 ; passNumber++ ) {
		segment[LITSEG].segmentBase = segment[DATASEG].imageUsed;
		segment[BSSSEG].segmentBase = segment[LITSEG].segmentBase + segment[LITSEG].imageUsed;
		for ( i = 0 ; i < NUM_SEGMENTS ; i++ ) {
			segment[i].imageUsed = 0;
		}
		segment[DATASEG].imageUsed = 4;		// skip the 0 byte, so NULL pointers are fixed up properly
		instructionCount = 0;

		for ( i = 0 ; i < numAsmFiles ; i++ ) {
			currentFileIndex = i;
			currentFileName = asmFileNames[ i ];
			currentFileLine = 0;
			FUNC7("pass %i: %s\n", passNumber, currentFileName );
			ptr = asmFiles[i];
			while ( ptr ) {
				ptr = FUNC3( ptr );
				FUNC0();
			}
		}

		// align all segment
		for ( i = 0 ; i < NUM_SEGMENTS ; i++ ) {
			segment[i].imageUsed = (segment[i].imageUsed + 3) & ~3;
		}
	}

	// reserve the stack in bss
	FUNC2( "_stackStart", segment[BSSSEG].imageUsed );
	segment[BSSSEG].imageUsed += stackSize;
	FUNC2( "_stackEnd", segment[BSSSEG].imageUsed );

	// write the image
	FUNC6();

	// write the map file even if there were errors
	FUNC5();
}