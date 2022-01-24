#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  msg_t ;
typedef  int /*<<< orphan*/  errorMessage ;
struct TYPE_9__ {int downloadSize; size_t downloadCurrentBlock; size_t downloadClientBlock; size_t downloadXmitBlock; int downloadCount; int* downloadBlockSize; int rate; int snapshotMsec; int downloadSendTime; scalar_t__* downloadBlocks; scalar_t__ downloadEOF; int /*<<< orphan*/  download; scalar_t__* downloadName; } ;
typedef  TYPE_1__ client_t ;
struct TYPE_13__ {int /*<<< orphan*/  integer; } ;
struct TYPE_12__ {int integer; } ;
struct TYPE_11__ {scalar_t__ integer; } ;
struct TYPE_10__ {int clients; int time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (scalar_t__*,char*) ; 
 int MAX_DOWNLOAD_BLKSIZE ; 
 size_t MAX_DOWNLOAD_WINDOW ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 
 TYPE_5__* sv_allowDownload ; 
 TYPE_4__* sv_maxRate ; 
 TYPE_3__* sv_pure ; 
 int /*<<< orphan*/  svc_download ; 
 TYPE_2__ svs ; 

void FUNC13( client_t *cl , msg_t *msg )
{
	int curindex;
	int rate;
	int blockspersnap;
	int idPack, missionPack;
	char errorMessage[1024];

	if (!*cl->downloadName)
		return;	// Nothing being downloaded

	if (!cl->download) {
		// We open the file here

		FUNC1( "clientDownload: %d : begining \"%s\"\n", cl - svs.clients, cl->downloadName );

		missionPack = FUNC6(cl->downloadName, "missionpack");
		idPack = missionPack || FUNC6(cl->downloadName, "baseq3");

		if ( !sv_allowDownload->integer || idPack ||
			( cl->downloadSize = FUNC5( cl->downloadName, &cl->download ) ) <= 0 ) {
			// cannot auto-download file
			if (idPack) {
				FUNC1("clientDownload: %d : \"%s\" cannot download id pk3 files\n", cl - svs.clients, cl->downloadName);
				if (missionPack) {
					FUNC2(errorMessage, sizeof(errorMessage), "Cannot autodownload Team Arena file \"%s\"\n"
									"The Team Arena mission pack can be found in your local game store.", cl->downloadName);
				}
				else {
					FUNC2(errorMessage, sizeof(errorMessage), "Cannot autodownload id pk3 file \"%s\"", cl->downloadName);
				}
			} else if ( !sv_allowDownload->integer ) {
				FUNC1("clientDownload: %d : \"%s\" download disabled", cl - svs.clients, cl->downloadName);
				if (sv_pure->integer) {
					FUNC2(errorMessage, sizeof(errorMessage), "Could not download \"%s\" because autodownloading is disabled on the server.\n\n"
										"You will need to get this file elsewhere before you "
										"can connect to this pure server.\n", cl->downloadName);
				} else {
					FUNC2(errorMessage, sizeof(errorMessage), "Could not download \"%s\" because autodownloading is disabled on the server.\n\n"
                    "The server you are connecting to is not a pure server, "
                    "set autodownload to No in your settings and you might be "
                    "able to join the game anyway.\n", cl->downloadName);
				}
			} else {
        // NOTE TTimo this is NOT supposed to happen unless bug in our filesystem scheme?
        //   if the pk3 is referenced, it must have been found somewhere in the filesystem
				FUNC1("clientDownload: %d : \"%s\" file not found on server\n", cl - svs.clients, cl->downloadName);
				FUNC2(errorMessage, sizeof(errorMessage), "File \"%s\" not found on server for autodownloading.\n", cl->downloadName);
			}
			FUNC7( msg, svc_download );
			FUNC10( msg, 0 ); // client is expecting block zero
			FUNC9( msg, -1 ); // illegal file size
			FUNC11( msg, errorMessage );

			*cl->downloadName = 0;
			return;
		}
 
		// Init
		cl->downloadCurrentBlock = cl->downloadClientBlock = cl->downloadXmitBlock = 0;
		cl->downloadCount = 0;
		cl->downloadEOF = qfalse;
	}

	// Perform any reads that we need to
	while (cl->downloadCurrentBlock - cl->downloadClientBlock < MAX_DOWNLOAD_WINDOW &&
		cl->downloadSize != cl->downloadCount) {

		curindex = (cl->downloadCurrentBlock % MAX_DOWNLOAD_WINDOW);

		if (!cl->downloadBlocks[curindex])
			cl->downloadBlocks[curindex] = FUNC12( MAX_DOWNLOAD_BLKSIZE );

		cl->downloadBlockSize[curindex] = FUNC4( cl->downloadBlocks[curindex], MAX_DOWNLOAD_BLKSIZE, cl->download );

		if (cl->downloadBlockSize[curindex] < 0) {
			// EOF right now
			cl->downloadCount = cl->downloadSize;
			break;
		}

		cl->downloadCount += cl->downloadBlockSize[curindex];

		// Load in next block
		cl->downloadCurrentBlock++;
	}

	// Check to see if we have eof condition and add the EOF block
	if (cl->downloadCount == cl->downloadSize &&
		!cl->downloadEOF &&
		cl->downloadCurrentBlock - cl->downloadClientBlock < MAX_DOWNLOAD_WINDOW) {

		cl->downloadBlockSize[cl->downloadCurrentBlock % MAX_DOWNLOAD_WINDOW] = 0;
		cl->downloadCurrentBlock++;

		cl->downloadEOF = qtrue;  // We have added the EOF block
	}

	// Loop up to window size times based on how many blocks we can fit in the
	// client snapMsec and rate

	// based on the rate, how many bytes can we fit in the snapMsec time of the client
	// normal rate / snapshotMsec calculation
	rate = cl->rate;
	if ( sv_maxRate->integer ) {
		if ( sv_maxRate->integer < 1000 ) {
			FUNC3( "sv_MaxRate", "1000" );
		}
		if ( sv_maxRate->integer < rate ) {
			rate = sv_maxRate->integer;
		}
	}

	if (!rate) {
		blockspersnap = 1;
	} else {
		blockspersnap = ( (rate * cl->snapshotMsec) / 1000 + MAX_DOWNLOAD_BLKSIZE ) /
			MAX_DOWNLOAD_BLKSIZE;
	}

	if (blockspersnap < 0)
		blockspersnap = 1;

	while (blockspersnap--) {

		// Write out the next section of the file, if we have already reached our window,
		// automatically start retransmitting

		if (cl->downloadClientBlock == cl->downloadCurrentBlock)
			return; // Nothing to transmit

		if (cl->downloadXmitBlock == cl->downloadCurrentBlock) {
			// We have transmitted the complete window, should we start resending?

			//FIXME:  This uses a hardcoded one second timeout for lost blocks
			//the timeout should be based on client rate somehow
			if (svs.time - cl->downloadSendTime > 1000)
				cl->downloadXmitBlock = cl->downloadClientBlock;
			else
				return;
		}

		// Send current block
		curindex = (cl->downloadXmitBlock % MAX_DOWNLOAD_WINDOW);

		FUNC7( msg, svc_download );
		FUNC10( msg, cl->downloadXmitBlock );

		// block zero is special, contains file size
		if ( cl->downloadXmitBlock == 0 )
			FUNC9( msg, cl->downloadSize );
 
		FUNC10( msg, cl->downloadBlockSize[curindex] );

		// Write the block
		if ( cl->downloadBlockSize[curindex] ) {
			FUNC8( msg, cl->downloadBlocks[curindex], cl->downloadBlockSize[curindex] );
		}

		FUNC0( "clientDownload: %d : writing block %d\n", cl - svs.clients, cl->downloadXmitBlock );

		// Move on to the next block
		// It will get sent with next snap shot.  The rate will keep us in line.
		cl->downloadXmitBlock++;

		cl->downloadSendTime = svs.time;
	}
}