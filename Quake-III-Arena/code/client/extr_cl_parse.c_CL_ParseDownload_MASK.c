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
typedef  int /*<<< orphan*/  msg_t ;
struct TYPE_2__ {scalar_t__ downloadSize; int downloadBlock; scalar_t__ downloadCount; scalar_t__* downloadName; scalar_t__* downloadTempName; scalar_t__ download; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,int,scalar_t__) ; 
 int MAX_MSGLEN ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_1__ clc ; 
 char* FUNC16 (char*,int) ; 

void FUNC17 ( msg_t *msg ) {
	int		size;
	unsigned char data[MAX_MSGLEN];
	int block;

	// read the data
	block = FUNC14 ( msg );

	if ( !block )
	{
		// block zero is special, contains file size
		clc.downloadSize = FUNC13 ( msg );

		FUNC7( "cl_downloadSize", clc.downloadSize );

		if (clc.downloadSize < 0)
		{
			FUNC4(ERR_DROP, FUNC15( msg ) );
			return;
		}
	}

	size = FUNC14 ( msg );
	if (size > 0)
		FUNC12( msg, data, size );

	if (clc.downloadBlock != block) {
		FUNC3( "CL_ParseDownload: Expected block %d, got %d\n", clc.downloadBlock, block);
		return;
	}

	// open the file if not opened yet
	if (!clc.download)
	{
		if (!*clc.downloadTempName) {
			FUNC5("Server sending download, but no download was requested\n");
			FUNC0( "stopdl" );
			return;
		}

		clc.download = FUNC9( clc.downloadTempName );

		if (!clc.download) {
			FUNC5( "Could not create %s\n", clc.downloadTempName );
			FUNC0( "stopdl" );
			FUNC1();
			return;
		}
	}

	if (size)
		FUNC11( data, size, clc.download );

	FUNC0( FUNC16("nextdl %d", clc.downloadBlock) );
	clc.downloadBlock++;

	clc.downloadCount += size;

	// So UI gets access to it
	FUNC7( "cl_downloadCount", clc.downloadCount );

	if (!size) { // A zero length block means EOF
		if (clc.download) {
			FUNC8( clc.download );
			clc.download = 0;

			// rename the file
			FUNC10 ( clc.downloadTempName, clc.downloadName );
		}
		*clc.downloadTempName = *clc.downloadName = 0;
		FUNC6( "cl_downloadName", "" );

		// send intentions now
		// We need this because without it, we would hold the last nextdl and then start
		// loading right away.  If we take a while to load, the server is happily trying
		// to send us that last block over and over.
		// Write it twice to help make sure we acknowledge the download
		FUNC2();
		FUNC2();

		// get another file if needed
		FUNC1 ();
	}
}