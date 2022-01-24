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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  MAX_OS_PATH ; 
 int MAX_SHADER_FILES ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* gamedir ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  numShaderInfo ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  token ; 

void FUNC8( void ) {
	char			filename[1024];
	int				i;
	char			*shaderFiles[MAX_SHADER_FILES];
	int				numShaderFiles;

	FUNC6( filename, "%sscripts/shaderlist.txt", gamedir );
	FUNC1( filename );

	numShaderFiles = 0;
	while ( 1 ) {
		if ( !FUNC0( qtrue ) ) {
			break;
		}
    shaderFiles[numShaderFiles] = FUNC4(MAX_OS_PATH);
		FUNC7( shaderFiles[ numShaderFiles ], token );
		numShaderFiles++;
	}

	for ( i = 0 ; i < numShaderFiles ; i++ ) {
		FUNC6( filename, "%sscripts/%s.shader", gamedir, shaderFiles[i] );
		FUNC2( filename );
    FUNC3(shaderFiles[i]);
	}

	FUNC5( "%5i shaderInfo\n", numShaderInfo);
}