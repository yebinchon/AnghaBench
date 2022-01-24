#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_21__ ;
typedef  struct TYPE_23__   TYPE_20__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  format ;
typedef  int /*<<< orphan*/  dsbuf ;
typedef  int /*<<< orphan*/  dsbcaps ;
struct TYPE_26__ {int nChannels; int wBitsPerSample; int nSamplesPerSec; int nBlockAlign; int nAvgBytesPerSec; int dwSize; int dwBufferBytes; int /*<<< orphan*/  dwFlags; struct TYPE_26__* lpwfxFormat; scalar_t__ cbSize; int /*<<< orphan*/  wFormatTag; } ;
typedef  TYPE_3__ WAVEFORMATEX ;
struct TYPE_28__ {TYPE_1__* lpVtbl; } ;
struct TYPE_27__ {TYPE_2__* lpVtbl; } ;
struct TYPE_25__ {scalar_t__ (* Play ) (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;scalar_t__ (* GetCaps ) (TYPE_6__*,TYPE_3__*) ;} ;
struct TYPE_24__ {int channels; int samplebits; int speed; int samples; int submission_chunk; TYPE_3__* buffer; } ;
struct TYPE_23__ {int /*<<< orphan*/  hWnd; } ;
struct TYPE_22__ {scalar_t__ (* SetCooperativeLevel ) (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;scalar_t__ (* CreateSoundBuffer ) (TYPE_9__*,TYPE_3__*,TYPE_6__**,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* Initialize ) (TYPE_9__*,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_3__ DSBUFFERDESC ;
typedef  TYPE_3__ DSBCAPS ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_DirectSound ; 
 int /*<<< orphan*/  CLSID_DirectSound8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  DSBCAPS_GETCURRENTPOSITION2 ; 
 int /*<<< orphan*/  DSBCAPS_LOCHARDWARE ; 
 int /*<<< orphan*/  DSBCAPS_LOCSOFTWARE ; 
 int /*<<< orphan*/  DSBPLAY_LOOPING ; 
 int /*<<< orphan*/  DSSCL_PRIORITY ; 
 scalar_t__ DS_OK ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IDirectSound ; 
 int /*<<< orphan*/  IID_IDirectSound8 ; 
 int SECONDARY_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  WAVE_FORMAT_PCM ; 
 TYPE_21__ dma ; 
 int gSndBufSize ; 
 TYPE_20__ g_wv ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 TYPE_9__* pDS ; 
 TYPE_6__* pDSBuf ; 
 int qfalse ; 
 int sample16 ; 
 int /*<<< orphan*/  FUNC8 (TYPE_9__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_9__*,TYPE_3__*,TYPE_6__**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (TYPE_9__*,TYPE_3__*,TYPE_6__**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_6__*,TYPE_3__*) ; 

int FUNC14 ()
{
	HRESULT			hresult;
	DSBUFFERDESC	dsbuf;
	DSBCAPS			dsbcaps;
	WAVEFORMATEX	format;
	int				use8;

	FUNC2( "Initializing DirectSound\n");

	use8 = 1;
    // Create IDirectSound using the primary sound device
    if( FUNC3( hresult = FUNC0(&CLSID_DirectSound8, NULL, CLSCTX_INPROC_SERVER, &IID_IDirectSound8, (void **)&pDS))) {
		use8 = 0;
	    if( FUNC3( hresult = FUNC0(&CLSID_DirectSound, NULL, CLSCTX_INPROC_SERVER, &IID_IDirectSound, (void **)&pDS))) {
			FUNC2 ("failed\n");
			FUNC5 ();
			return qfalse;
		}
	}

	hresult = pDS->lpVtbl->Initialize( pDS, NULL);

	FUNC1( "ok\n" );

	FUNC1("...setting DSSCL_PRIORITY coop level: " );

	if ( DS_OK != pDS->lpVtbl->SetCooperativeLevel( pDS, g_wv.hWnd, DSSCL_PRIORITY ) )	{
		FUNC2 ("failed\n");
		FUNC5 ();
		return qfalse;
	}
	FUNC1("ok\n" );


	// create the secondary buffer we'll actually work with
	dma.channels = 2;
	dma.samplebits = 16;

//	if (s_khz->integer == 44)
//		dma.speed = 44100;
//	else if (s_khz->integer == 22)
//		dma.speed = 22050;
//	else
//		dma.speed = 11025;

	dma.speed = 22050;
	FUNC7 (&format, 0, sizeof(format));
	format.wFormatTag = WAVE_FORMAT_PCM;
    format.nChannels = dma.channels;
    format.wBitsPerSample = dma.samplebits;
    format.nSamplesPerSec = dma.speed;
    format.nBlockAlign = format.nChannels * format.wBitsPerSample / 8;
    format.cbSize = 0;
    format.nAvgBytesPerSec = format.nSamplesPerSec*format.nBlockAlign; 

	FUNC7 (&dsbuf, 0, sizeof(dsbuf));
	dsbuf.dwSize = sizeof(DSBUFFERDESC);

	// Micah: take advantage of 2D hardware.if available.
	dsbuf.dwFlags = DSBCAPS_LOCHARDWARE;
	if (use8) {
		dsbuf.dwFlags |= DSBCAPS_GETCURRENTPOSITION2;
	}
	dsbuf.dwBufferBytes = SECONDARY_BUFFER_SIZE;
	dsbuf.lpwfxFormat = &format;
	
	FUNC7(&dsbcaps, 0, sizeof(dsbcaps));
	dsbcaps.dwSize = sizeof(dsbcaps);
	
	FUNC1( "...creating secondary buffer: " );
	if (DS_OK == pDS->lpVtbl->CreateSoundBuffer(pDS, &dsbuf, &pDSBuf, NULL)) {
		FUNC2( "locked hardware.  ok\n" );
	}
	else {
		// Couldn't get hardware, fallback to software.
		dsbuf.dwFlags = DSBCAPS_LOCSOFTWARE;
		if (use8) {
			dsbuf.dwFlags |= DSBCAPS_GETCURRENTPOSITION2;
		}
		if (DS_OK != pDS->lpVtbl->CreateSoundBuffer(pDS, &dsbuf, &pDSBuf, NULL)) {
			FUNC2( "failed\n" );
			FUNC5 ();
			return qfalse;
		}
		FUNC1( "forced to software.  ok\n" );
	}
		
	// Make sure mixer is active
	if ( DS_OK != pDSBuf->lpVtbl->Play(pDSBuf, 0, 0, DSBPLAY_LOOPING) ) {
		FUNC2 ("*** Looped sound play failed ***\n");
		FUNC5 ();
		return qfalse;
	}

	// get the returned buffer size
	if ( DS_OK != pDSBuf->lpVtbl->GetCaps (pDSBuf, &dsbcaps) ) {
		FUNC2 ("*** GetCaps failed ***\n");
		FUNC5 ();
		return qfalse;
	}
	
	gSndBufSize = dsbcaps.dwBufferBytes;

	dma.channels = format.nChannels;
	dma.samplebits = format.wBitsPerSample;
	dma.speed = format.nSamplesPerSec;
	dma.samples = gSndBufSize/(dma.samplebits/8);
	dma.submission_chunk = 1;
	dma.buffer = NULL;			// must be locked first

	sample16 = (dma.samplebits/8) - 1;

	FUNC4 ();
	if (dma.buffer)
		FUNC7(dma.buffer, 0, dma.samples * dma.samplebits/8);
	FUNC6 ();
	return 1;
}