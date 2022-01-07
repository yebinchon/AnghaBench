
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int missingfiles ;
struct TYPE_6__ {int integer; } ;
struct TYPE_5__ {char* downloadList; } ;
struct TYPE_4__ {int state; } ;


 int CA_CONNECTED ;
 int CL_DownloadsComplete () ;
 int CL_NextDownload () ;
 int Com_Printf (char*,char*) ;
 scalar_t__ FS_ComparePaks (char*,int,int ) ;
 TYPE_3__* cl_allowDownload ;
 TYPE_2__ clc ;
 TYPE_1__ cls ;
 int qfalse ;
 int qtrue ;

void CL_InitDownloads(void) {
  char missingfiles[1024];

  if ( !cl_allowDownload->integer )
  {


    if (FS_ComparePaks( missingfiles, sizeof( missingfiles ), qfalse ) )
    {


      Com_Printf( "\nWARNING: You are missing some files referenced by the server:\n%s"
                  "You might not be able to join the game\n"
                  "Go to the setting menu to turn on autodownload, or get the file elsewhere\n\n", missingfiles );
    }
  }
  else if ( FS_ComparePaks( clc.downloadList, sizeof( clc.downloadList ) , qtrue ) ) {

    Com_Printf("Need paks: %s\n", clc.downloadList );

  if ( *clc.downloadList ) {

   cls.state = CA_CONNECTED;
   CL_NextDownload();
   return;
  }

 }

 CL_DownloadsComplete();
}
