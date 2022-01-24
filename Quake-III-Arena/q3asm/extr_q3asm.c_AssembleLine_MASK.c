#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int imageUsed; } ;
struct TYPE_6__ {char* name; int opcode; } ;

/* Variables and functions */
 size_t BSSSEG ; 
 size_t CODESEG ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 size_t DATASEG ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int FUNC5 (char*) ; 
 size_t LITSEG ; 
 int NUM_SOURCE_OPS ; 
 int OP_ARG ; 
 int OP_BLOCK_COPY ; 
 int OP_CALL ; 
 int OP_CVFI ; 
 int OP_CVIF ; 
 int OP_ENTER ; 
 int OP_IGNORE ; 
 int OP_LEAVE ; 
 int OP_LOCAL ; 
 int OP_POP ; 
 int OP_PUSH ; 
 int OP_SEX16 ; 
 int OP_SEX8 ; 
 int OP_UNDEF ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 () ; 
 int FUNC8 () ; 
 int FUNC9 (char*) ; 
 int currentArgOffset ; 
 int currentArgs ; 
 int currentLocals ; 
 TYPE_2__* currentSegment ; 
 int instructionCount ; 
 int* opcodesHash ; 
 TYPE_2__* segment ; 
 TYPE_1__* sourceOps ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 char* token ; 

void FUNC13( void ) {
	int		v, v2;
	int		i;
	int		hash;

	FUNC6();
	if ( !token[0] ) {
		return;
	}

	hash = FUNC5( token );

	for ( i = 0 ; i < NUM_SOURCE_OPS ; i++ ) {
		if ( hash == opcodesHash[i] && !FUNC10( token, sourceOps[i].name ) ) {
			int		opcode;
			int		expression;

			if ( sourceOps[i].opcode == OP_UNDEF ) {
				FUNC0( "Undefined opcode: %s\n", token );
			}
			if ( sourceOps[i].opcode == OP_IGNORE ) {
				return;		// we ignore most conversions
			}

			// sign extensions need to check next parm
			opcode = sourceOps[i].opcode;
			if ( opcode == OP_SEX8 ) {
				FUNC6();
				if ( token[0] == '1' ) {
					opcode = OP_SEX8;
				} else if ( token[0] == '2' ) {
					opcode = OP_SEX16;
				} else {
					FUNC0( "Bad sign extension: %s\n", token );
					return;
				}
			}

			// check for expression
			FUNC6();
			if ( token[0] && sourceOps[i].opcode != OP_CVIF
					&& sourceOps[i].opcode != OP_CVFI ) {
				expression = FUNC7();

				// code like this can generate non-dword block copies:
				// auto char buf[2] = " ";
				// we are just going to round up.  This might conceivably
				// be incorrect if other initialized chars follow.
				if ( opcode == OP_BLOCK_COPY ) {
					expression = ( expression + 3 ) & ~3;
				}

				FUNC2( &segment[CODESEG], opcode );
				FUNC3( &segment[CODESEG], expression );
			} else {
				FUNC2( &segment[CODESEG], opcode );
			}

			instructionCount++;
			return;
		}
	}

	// call instructions reset currentArgOffset
	if ( !FUNC12( token, "CALL", 4 ) ) {
		FUNC2( &segment[CODESEG], OP_CALL );
		instructionCount++;
		currentArgOffset = 0;
		return;
	}

	// arg is converted to a reversed store
	if ( !FUNC12( token, "ARG", 3 ) ) {
		FUNC2( &segment[CODESEG], OP_ARG );
		instructionCount++;
		if ( 8 + currentArgOffset >= 256 ) {
			FUNC0( "currentArgOffset >= 256" );
			return;
		}
		FUNC2( &segment[CODESEG], 8 + currentArgOffset );
		currentArgOffset += 4;
		return;
	}

	// ret just leaves something on the op stack
	if ( !FUNC12( token, "RET", 3 ) ) {
		FUNC2( &segment[CODESEG], OP_LEAVE );
		instructionCount++;
		FUNC3( &segment[CODESEG], 8 + currentLocals + currentArgs );
		return;
	}

	// pop is needed to discard the return value of 
	// a function
	if ( !FUNC12( token, "pop", 3 ) ) {
		FUNC2( &segment[CODESEG], OP_POP );
		instructionCount++;
		return;
	}

	// address of a parameter is converted to OP_LOCAL
	if ( !FUNC12( token, "ADDRF", 5 ) ) {
		instructionCount++;
		FUNC6();
		v = FUNC7();
		v = 16 + currentArgs + currentLocals + v;
		FUNC2( &segment[CODESEG], OP_LOCAL );
		FUNC3( &segment[CODESEG], v );
		return;
	}

	// address of a local is converted to OP_LOCAL
	if ( !FUNC12( token, "ADDRL", 5 ) ) {
		instructionCount++;
		FUNC6();
		v = FUNC7();
		v = 8 + currentArgs + v;
		FUNC2( &segment[CODESEG], OP_LOCAL );
		FUNC3( &segment[CODESEG], v );
		return;
	}

	if ( !FUNC10( token, "proc" ) ) {
		char	name[1024];

		FUNC6();					// function name
		FUNC11( name, token );

		FUNC1( token, instructionCount ); // segment[CODESEG].imageUsed );

		currentLocals = FUNC8();	// locals
		currentLocals = ( currentLocals + 3 ) & ~3;
		currentArgs = FUNC8();		// arg marshalling
		currentArgs = ( currentArgs + 3 ) & ~3;

		if ( 8 + currentLocals + currentArgs >= 32767 ) {
			FUNC0( "Locals > 32k in %s\n", name );
		}

		instructionCount++;
		FUNC2( &segment[CODESEG], OP_ENTER );
		FUNC3( &segment[CODESEG], 8 + currentLocals + currentArgs );
		return;
	}
	if ( !FUNC10( token, "endproc" ) ) {
		FUNC6();				// skip the function name
		v = FUNC8();		// locals
		v2 = FUNC8();		// arg marshalling

		// all functions must leave something on the opstack
		instructionCount++;
		FUNC2( &segment[CODESEG], OP_PUSH );

		instructionCount++;
		FUNC2( &segment[CODESEG], OP_LEAVE );
		FUNC3( &segment[CODESEG], 8 + currentLocals + currentArgs );

		return;
	}


	if ( !FUNC10( token, "address" ) ) {
		FUNC6();
		v = FUNC7();

		FUNC4( DATASEG );
		FUNC3( currentSegment, v );
		return;
	}
	if ( !FUNC10( token, "export" ) ) {
		return;
	}
	if ( !FUNC10( token, "import" ) ) {
		return;
	}
	if ( !FUNC10( token, "code" ) ) {
		currentSegment = &segment[CODESEG];
		return;
	}
	if ( !FUNC10( token, "bss" ) ) {
		currentSegment = &segment[BSSSEG];
		return;
	}
	if ( !FUNC10( token, "data" ) ) {
		currentSegment = &segment[DATASEG];
		return;
	}
	if ( !FUNC10( token, "lit" ) ) {
		currentSegment = &segment[LITSEG];
		return;
	}
	if ( !FUNC10( token, "line" ) ) {
		return;
	}
	if ( !FUNC10( token, "file" ) ) {
		return;
	}

	if ( !FUNC10( token, "equ" ) ) {
		char	name[1024];

		FUNC6();
		FUNC11( name, token );
		FUNC6();
		FUNC1( name, FUNC9(token) );
		return;
	}

	if ( !FUNC10( token, "align" ) ) {
		v = FUNC8();
		currentSegment->imageUsed = (currentSegment->imageUsed + v - 1 ) & ~( v - 1 );
		return;
	}

	if ( !FUNC10( token, "skip" ) ) {
		v = FUNC8();
		currentSegment->imageUsed += v;
		return;
	}

	if ( !FUNC10( token, "byte" ) ) {
		v = FUNC8();
		v2 = FUNC8();

		if ( v == 1 ) {
			FUNC4( LITSEG );
		} else if ( v == 4 ) {
			FUNC4( DATASEG );
		} else if ( v == 2 ) {
			FUNC0( "16 bit initialized data not supported" );
		}

		// emit little endien
		for ( i = 0 ; i < v ; i++ ) {
			FUNC2( currentSegment, v2 );
			v2 >>= 8;
		}
		return;
	}

	// code labels are emited as instruction counts, not byte offsets,
	// because the physical size of the code will change with
	// different run time compilers and we want to minimize the
	// size of the required translation table
	if ( !FUNC12( token, "LABEL", 5 ) ) {
		FUNC6();
		if ( currentSegment == &segment[CODESEG] ) {
			FUNC1( token, instructionCount );
		} else {
			FUNC1( token, currentSegment->imageUsed );
		}
		return;
	}

	FUNC0( "Unknown token: %s\n", token );
}