
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int downloadClientBlock; scalar_t__* downloadBlockSize; int downloadSendTime; int downloadName; } ;
typedef TYPE_1__ client_t ;
struct TYPE_9__ {int clients; int time; } ;


 int Cmd_Argv (int) ;
 int Com_DPrintf (char*,TYPE_1__*,int) ;
 int Com_Printf (char*,TYPE_1__*,int ) ;
 size_t MAX_DOWNLOAD_WINDOW ;
 int SV_CloseDownload (TYPE_1__*) ;
 int SV_DropClient (TYPE_1__*,char*) ;
 int atoi (int ) ;
 TYPE_2__ svs ;

void SV_NextDownload_f( client_t *cl )
{
 int block = atoi( Cmd_Argv(1) );

 if (block == cl->downloadClientBlock) {
  Com_DPrintf( "clientDownload: %d : client acknowledge of block %d\n", cl - svs.clients, block );


  if (cl->downloadBlockSize[cl->downloadClientBlock % MAX_DOWNLOAD_WINDOW] == 0) {
   Com_Printf( "clientDownload: %d : file \"%s\" completed\n", cl - svs.clients, cl->downloadName );
   SV_CloseDownload( cl );
   return;
  }

  cl->downloadSendTime = svs.time;
  cl->downloadClientBlock++;
  return;
 }



 SV_DropClient( cl, "broken download" );
}
