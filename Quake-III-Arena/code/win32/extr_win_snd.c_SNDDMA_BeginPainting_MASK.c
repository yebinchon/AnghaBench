#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {unsigned char* buffer; } ;
struct TYPE_10__ {TYPE_1__* lpVtbl; } ;
struct TYPE_9__ {scalar_t__ (* GetStatus ) (TYPE_2__*,int*) ;scalar_t__ (* Lock ) (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int**,int /*<<< orphan*/ *,int**,int*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* Restore ) (TYPE_2__*) ;int /*<<< orphan*/  (* Play ) (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  DSBPLAY_LOOPING ; 
 int DSBSTATUS_BUFFERLOST ; 
 int DSBSTATUS_PLAYING ; 
 scalar_t__ DSERR_BUFFERLOST ; 
 scalar_t__ DS_OK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_8__ dma ; 
 int /*<<< orphan*/  gSndBufSize ; 
 int /*<<< orphan*/  locksize ; 
 TYPE_2__* pDSBuf ; 
 scalar_t__ FUNC3 (TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int**,int /*<<< orphan*/ *,int**,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

void FUNC8( void ) {
	int		reps;
	DWORD	dwSize2;
	DWORD	*pbuf, *pbuf2;
	HRESULT	hresult;
	DWORD	dwStatus;

	if ( !pDSBuf ) {
		return;
	}

	// if the buffer was lost or stopped, restore it and/or restart it
	if ( pDSBuf->lpVtbl->GetStatus (pDSBuf, &dwStatus) != DS_OK ) {
		FUNC0 ("Couldn't get sound buffer status\n");
	}
	
	if (dwStatus & DSBSTATUS_BUFFERLOST)
		pDSBuf->lpVtbl->Restore (pDSBuf);
	
	if (!(dwStatus & DSBSTATUS_PLAYING))
		pDSBuf->lpVtbl->Play(pDSBuf, 0, 0, DSBPLAY_LOOPING);

	// lock the dsound buffer

	reps = 0;
	dma.buffer = NULL;

	while ((hresult = pDSBuf->lpVtbl->Lock(pDSBuf, 0, gSndBufSize, &pbuf, &locksize, 
								   &pbuf2, &dwSize2, 0)) != DS_OK)
	{
		if (hresult != DSERR_BUFFERLOST)
		{
			FUNC0( "SNDDMA_BeginPainting: Lock failed with error '%s'\n", FUNC1( hresult ) );
			FUNC2 ();
			return;
		}
		else
		{
			pDSBuf->lpVtbl->Restore( pDSBuf );
		}

		if (++reps > 2)
			return;
	}
	dma.buffer = (unsigned char *)pbuf;
}