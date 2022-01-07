
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int byte ;
struct TYPE_6__ {int vidWidth; int vidHeight; scalar_t__ deviceSupportsGamma; } ;
struct TYPE_5__ {int (* Hunk_FreeTempMemory ) (int *) ;int (* FS_WriteFile ) (char*,int *,int) ;int * (* Hunk_AllocateTempMemory ) (int) ;} ;
struct TYPE_4__ {scalar_t__ overbrightBits; } ;


 int GL_RGBA ;
 int GL_UNSIGNED_BYTE ;
 int R_GammaCorrect (int *,int) ;
 int SaveJPG (char*,int,int,int,int *) ;
 TYPE_3__ glConfig ;
 int qglReadPixels (int,int,int,int,int ,int ,int *) ;
 TYPE_2__ ri ;
 int * stub1 (int) ;
 int stub2 (char*,int *,int) ;
 int stub3 (int *) ;
 TYPE_1__ tr ;

void RB_TakeScreenshotJPEG( int x, int y, int width, int height, char *fileName ) {
 byte *buffer;

 buffer = ri.Hunk_AllocateTempMemory(glConfig.vidWidth*glConfig.vidHeight*4);

 qglReadPixels( x, y, width, height, GL_RGBA, GL_UNSIGNED_BYTE, buffer );


 if ( ( tr.overbrightBits > 0 ) && glConfig.deviceSupportsGamma ) {
  R_GammaCorrect( buffer, glConfig.vidWidth * glConfig.vidHeight * 4 );
 }

 ri.FS_WriteFile( fileName, buffer, 1 );
 SaveJPG( fileName, 95, glConfig.vidWidth, glConfig.vidHeight, buffer);

 ri.Hunk_FreeTempMemory( buffer );
}
