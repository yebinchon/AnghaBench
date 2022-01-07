
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** downloadBlocks; scalar_t__* downloadName; scalar_t__ download; } ;
typedef TYPE_1__ client_t ;


 int FS_FCloseFile (scalar_t__) ;
 int MAX_DOWNLOAD_WINDOW ;
 int Z_Free (int *) ;

__attribute__((used)) static void SV_CloseDownload( client_t *cl ) {
 int i;


 if (cl->download) {
  FS_FCloseFile( cl->download );
 }
 cl->download = 0;
 *cl->downloadName = 0;


 for (i = 0; i < MAX_DOWNLOAD_WINDOW; i++) {
  if (cl->downloadBlocks[i]) {
   Z_Free( cl->downloadBlocks[i] );
   cl->downloadBlocks[i] = ((void*)0);
  }
 }

}
