
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {unsigned char* buffer; } ;
struct TYPE_10__ {TYPE_1__* lpVtbl; } ;
struct TYPE_9__ {scalar_t__ (* GetStatus ) (TYPE_2__*,int*) ;scalar_t__ (* Lock ) (TYPE_2__*,int ,int ,int**,int *,int**,int*,int ) ;int (* Restore ) (TYPE_2__*) ;int (* Play ) (TYPE_2__*,int ,int ,int ) ;} ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 int Com_Printf (char*,...) ;
 int DSBPLAY_LOOPING ;
 int DSBSTATUS_BUFFERLOST ;
 int DSBSTATUS_PLAYING ;
 scalar_t__ DSERR_BUFFERLOST ;
 scalar_t__ DS_OK ;
 int DSoundError (scalar_t__) ;
 int S_Shutdown () ;
 TYPE_8__ dma ;
 int gSndBufSize ;
 int locksize ;
 TYPE_2__* pDSBuf ;
 scalar_t__ stub1 (TYPE_2__*,int*) ;
 int stub2 (TYPE_2__*) ;
 int stub3 (TYPE_2__*,int ,int ,int ) ;
 scalar_t__ stub4 (TYPE_2__*,int ,int ,int**,int *,int**,int*,int ) ;
 int stub5 (TYPE_2__*) ;

void SNDDMA_BeginPainting( void ) {
 int reps;
 DWORD dwSize2;
 DWORD *pbuf, *pbuf2;
 HRESULT hresult;
 DWORD dwStatus;

 if ( !pDSBuf ) {
  return;
 }


 if ( pDSBuf->lpVtbl->GetStatus (pDSBuf, &dwStatus) != DS_OK ) {
  Com_Printf ("Couldn't get sound buffer status\n");
 }

 if (dwStatus & DSBSTATUS_BUFFERLOST)
  pDSBuf->lpVtbl->Restore (pDSBuf);

 if (!(dwStatus & DSBSTATUS_PLAYING))
  pDSBuf->lpVtbl->Play(pDSBuf, 0, 0, DSBPLAY_LOOPING);



 reps = 0;
 dma.buffer = ((void*)0);

 while ((hresult = pDSBuf->lpVtbl->Lock(pDSBuf, 0, gSndBufSize, &pbuf, &locksize,
           &pbuf2, &dwSize2, 0)) != DS_OK)
 {
  if (hresult != DSERR_BUFFERLOST)
  {
   Com_Printf( "SNDDMA_BeginPainting: Lock failed with error '%s'\n", DSoundError( hresult ) );
   S_Shutdown ();
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
