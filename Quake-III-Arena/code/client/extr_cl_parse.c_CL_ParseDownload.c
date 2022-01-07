
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int msg_t ;
struct TYPE_2__ {scalar_t__ downloadSize; int downloadBlock; scalar_t__ downloadCount; scalar_t__* downloadName; scalar_t__* downloadTempName; scalar_t__ download; } ;


 int CL_AddReliableCommand (char*) ;
 int CL_NextDownload () ;
 int CL_WritePacket () ;
 int Com_DPrintf (char*,int,int) ;
 int Com_Error (int ,int ) ;
 int Com_Printf (char*,...) ;
 int Cvar_Set (char*,char*) ;
 int Cvar_SetValue (char*,scalar_t__) ;
 int ERR_DROP ;
 int FS_FCloseFile (scalar_t__) ;
 scalar_t__ FS_SV_FOpenFileWrite (scalar_t__*) ;
 int FS_SV_Rename (scalar_t__*,scalar_t__*) ;
 int FS_Write (unsigned char*,int,scalar_t__) ;
 int MAX_MSGLEN ;
 int MSG_ReadData (int *,unsigned char*,int) ;
 scalar_t__ MSG_ReadLong (int *) ;
 int MSG_ReadShort (int *) ;
 int MSG_ReadString (int *) ;
 TYPE_1__ clc ;
 char* va (char*,int) ;

void CL_ParseDownload ( msg_t *msg ) {
 int size;
 unsigned char data[MAX_MSGLEN];
 int block;


 block = MSG_ReadShort ( msg );

 if ( !block )
 {

  clc.downloadSize = MSG_ReadLong ( msg );

  Cvar_SetValue( "cl_downloadSize", clc.downloadSize );

  if (clc.downloadSize < 0)
  {
   Com_Error(ERR_DROP, MSG_ReadString( msg ) );
   return;
  }
 }

 size = MSG_ReadShort ( msg );
 if (size > 0)
  MSG_ReadData( msg, data, size );

 if (clc.downloadBlock != block) {
  Com_DPrintf( "CL_ParseDownload: Expected block %d, got %d\n", clc.downloadBlock, block);
  return;
 }


 if (!clc.download)
 {
  if (!*clc.downloadTempName) {
   Com_Printf("Server sending download, but no download was requested\n");
   CL_AddReliableCommand( "stopdl" );
   return;
  }

  clc.download = FS_SV_FOpenFileWrite( clc.downloadTempName );

  if (!clc.download) {
   Com_Printf( "Could not create %s\n", clc.downloadTempName );
   CL_AddReliableCommand( "stopdl" );
   CL_NextDownload();
   return;
  }
 }

 if (size)
  FS_Write( data, size, clc.download );

 CL_AddReliableCommand( va("nextdl %d", clc.downloadBlock) );
 clc.downloadBlock++;

 clc.downloadCount += size;


 Cvar_SetValue( "cl_downloadCount", clc.downloadCount );

 if (!size) {
  if (clc.download) {
   FS_FCloseFile( clc.download );
   clc.download = 0;


   FS_SV_Rename ( clc.downloadTempName, clc.downloadName );
  }
  *clc.downloadTempName = *clc.downloadName = 0;
  Cvar_Set( "cl_downloadName", "" );






  CL_WritePacket();
  CL_WritePacket();


  CL_NextDownload ();
 }
}
