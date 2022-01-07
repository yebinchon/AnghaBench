
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int msg_t ;
typedef int errorMessage ;
struct TYPE_9__ {int downloadSize; size_t downloadCurrentBlock; size_t downloadClientBlock; size_t downloadXmitBlock; int downloadCount; int* downloadBlockSize; int rate; int snapshotMsec; int downloadSendTime; scalar_t__* downloadBlocks; scalar_t__ downloadEOF; int download; scalar_t__* downloadName; } ;
typedef TYPE_1__ client_t ;
struct TYPE_13__ {int integer; } ;
struct TYPE_12__ {int integer; } ;
struct TYPE_11__ {scalar_t__ integer; } ;
struct TYPE_10__ {int clients; int time; } ;


 int Com_DPrintf (char*,TYPE_1__*,int) ;
 int Com_Printf (char*,TYPE_1__*,scalar_t__*) ;
 int Com_sprintf (char*,int,char*,scalar_t__*) ;
 int Cvar_Set (char*,char*) ;
 int FS_Read (scalar_t__,int,int ) ;
 int FS_SV_FOpenFileRead (scalar_t__*,int *) ;
 int FS_idPak (scalar_t__*,char*) ;
 int MAX_DOWNLOAD_BLKSIZE ;
 size_t MAX_DOWNLOAD_WINDOW ;
 int MSG_WriteByte (int *,int ) ;
 int MSG_WriteData (int *,scalar_t__,int) ;
 int MSG_WriteLong (int *,int) ;
 int MSG_WriteShort (int *,int) ;
 int MSG_WriteString (int *,char*) ;
 scalar_t__ Z_Malloc (int) ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 TYPE_5__* sv_allowDownload ;
 TYPE_4__* sv_maxRate ;
 TYPE_3__* sv_pure ;
 int svc_download ;
 TYPE_2__ svs ;

void SV_WriteDownloadToClient( client_t *cl , msg_t *msg )
{
 int curindex;
 int rate;
 int blockspersnap;
 int idPack, missionPack;
 char errorMessage[1024];

 if (!*cl->downloadName)
  return;

 if (!cl->download) {


  Com_Printf( "clientDownload: %d : begining \"%s\"\n", cl - svs.clients, cl->downloadName );

  missionPack = FS_idPak(cl->downloadName, "missionpack");
  idPack = missionPack || FS_idPak(cl->downloadName, "baseq3");

  if ( !sv_allowDownload->integer || idPack ||
   ( cl->downloadSize = FS_SV_FOpenFileRead( cl->downloadName, &cl->download ) ) <= 0 ) {

   if (idPack) {
    Com_Printf("clientDownload: %d : \"%s\" cannot download id pk3 files\n", cl - svs.clients, cl->downloadName);
    if (missionPack) {
     Com_sprintf(errorMessage, sizeof(errorMessage), "Cannot autodownload Team Arena file \"%s\"\n"
         "The Team Arena mission pack can be found in your local game store.", cl->downloadName);
    }
    else {
     Com_sprintf(errorMessage, sizeof(errorMessage), "Cannot autodownload id pk3 file \"%s\"", cl->downloadName);
    }
   } else if ( !sv_allowDownload->integer ) {
    Com_Printf("clientDownload: %d : \"%s\" download disabled", cl - svs.clients, cl->downloadName);
    if (sv_pure->integer) {
     Com_sprintf(errorMessage, sizeof(errorMessage), "Could not download \"%s\" because autodownloading is disabled on the server.\n\n"
          "You will need to get this file elsewhere before you "
          "can connect to this pure server.\n", cl->downloadName);
    } else {
     Com_sprintf(errorMessage, sizeof(errorMessage), "Could not download \"%s\" because autodownloading is disabled on the server.\n\n"
                    "The server you are connecting to is not a pure server, "
                    "set autodownload to No in your settings and you might be "
                    "able to join the game anyway.\n", cl->downloadName);
    }
   } else {


    Com_Printf("clientDownload: %d : \"%s\" file not found on server\n", cl - svs.clients, cl->downloadName);
    Com_sprintf(errorMessage, sizeof(errorMessage), "File \"%s\" not found on server for autodownloading.\n", cl->downloadName);
   }
   MSG_WriteByte( msg, svc_download );
   MSG_WriteShort( msg, 0 );
   MSG_WriteLong( msg, -1 );
   MSG_WriteString( msg, errorMessage );

   *cl->downloadName = 0;
   return;
  }


  cl->downloadCurrentBlock = cl->downloadClientBlock = cl->downloadXmitBlock = 0;
  cl->downloadCount = 0;
  cl->downloadEOF = qfalse;
 }


 while (cl->downloadCurrentBlock - cl->downloadClientBlock < MAX_DOWNLOAD_WINDOW &&
  cl->downloadSize != cl->downloadCount) {

  curindex = (cl->downloadCurrentBlock % MAX_DOWNLOAD_WINDOW);

  if (!cl->downloadBlocks[curindex])
   cl->downloadBlocks[curindex] = Z_Malloc( MAX_DOWNLOAD_BLKSIZE );

  cl->downloadBlockSize[curindex] = FS_Read( cl->downloadBlocks[curindex], MAX_DOWNLOAD_BLKSIZE, cl->download );

  if (cl->downloadBlockSize[curindex] < 0) {

   cl->downloadCount = cl->downloadSize;
   break;
  }

  cl->downloadCount += cl->downloadBlockSize[curindex];


  cl->downloadCurrentBlock++;
 }


 if (cl->downloadCount == cl->downloadSize &&
  !cl->downloadEOF &&
  cl->downloadCurrentBlock - cl->downloadClientBlock < MAX_DOWNLOAD_WINDOW) {

  cl->downloadBlockSize[cl->downloadCurrentBlock % MAX_DOWNLOAD_WINDOW] = 0;
  cl->downloadCurrentBlock++;

  cl->downloadEOF = qtrue;
 }






 rate = cl->rate;
 if ( sv_maxRate->integer ) {
  if ( sv_maxRate->integer < 1000 ) {
   Cvar_Set( "sv_MaxRate", "1000" );
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




  if (cl->downloadClientBlock == cl->downloadCurrentBlock)
   return;

  if (cl->downloadXmitBlock == cl->downloadCurrentBlock) {




   if (svs.time - cl->downloadSendTime > 1000)
    cl->downloadXmitBlock = cl->downloadClientBlock;
   else
    return;
  }


  curindex = (cl->downloadXmitBlock % MAX_DOWNLOAD_WINDOW);

  MSG_WriteByte( msg, svc_download );
  MSG_WriteShort( msg, cl->downloadXmitBlock );


  if ( cl->downloadXmitBlock == 0 )
   MSG_WriteLong( msg, cl->downloadSize );

  MSG_WriteShort( msg, cl->downloadBlockSize[curindex] );


  if ( cl->downloadBlockSize[curindex] ) {
   MSG_WriteData( msg, cl->downloadBlocks[curindex], cl->downloadBlockSize[curindex] );
  }

  Com_DPrintf( "clientDownload: %d : writing block %d\n", cl - svs.clients, cl->downloadXmitBlock );



  cl->downloadXmitBlock++;

  cl->downloadSendTime = svs.time;
 }
}
