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
typedef  int /*<<< orphan*/  fileHandle_t ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int MAX_OSPATH ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  cl_cdkey ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char const*) ; 

void FUNC7( const char *filename ) {
	fileHandle_t	f;
	char			buffer[33];
	char			fbuffer[MAX_OSPATH];

	FUNC6(fbuffer, "%s/q3key", filename);

	FUNC4( fbuffer, &f );
	if ( !f ) {
		FUNC5( cl_cdkey, "                ", 17 );
		return;
	}

	FUNC1( buffer, 0, sizeof(buffer) );

	FUNC3( buffer, 16, f );
	FUNC2( f );

	if (FUNC0(buffer, NULL)) {
		FUNC5( cl_cdkey, buffer, 17 );
	} else {
		FUNC5( cl_cdkey, "                ", 17 );
	}
}