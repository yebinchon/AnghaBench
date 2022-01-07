
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int byte ;
struct TYPE_6__ {int vidWidth; int vidHeight; scalar_t__ deviceSupportsGamma; } ;
struct TYPE_5__ {int* (* Hunk_AllocateTempMemory ) (int) ;int (* Hunk_FreeTempMemory ) (int*) ;int (* FS_WriteFile ) (char*,int*,int) ;} ;
struct TYPE_4__ {scalar_t__ overbrightBits; } ;


 int Com_Memset (int*,int ,int) ;
 int GL_RGB ;
 int GL_UNSIGNED_BYTE ;
 int R_GammaCorrect (int*,int) ;
 TYPE_3__ glConfig ;
 int qglReadPixels (int,int,int,int,int ,int ,int*) ;
 TYPE_2__ ri ;
 int* stub1 (int) ;
 int stub2 (char*,int*,int) ;
 int stub3 (int*) ;
 TYPE_1__ tr ;

void RB_TakeScreenshot( int x, int y, int width, int height, char *fileName ) {
 byte *buffer;
 int i, c, temp;

 buffer = ri.Hunk_AllocateTempMemory(glConfig.vidWidth*glConfig.vidHeight*3+18);

 Com_Memset (buffer, 0, 18);
 buffer[2] = 2;
 buffer[12] = width & 255;
 buffer[13] = width >> 8;
 buffer[14] = height & 255;
 buffer[15] = height >> 8;
 buffer[16] = 24;

 qglReadPixels( x, y, width, height, GL_RGB, GL_UNSIGNED_BYTE, buffer+18 );


 c = 18 + width * height * 3;
 for (i=18 ; i<c ; i+=3) {
  temp = buffer[i];
  buffer[i] = buffer[i+2];
  buffer[i+2] = temp;
 }


 if ( ( tr.overbrightBits > 0 ) && glConfig.deviceSupportsGamma ) {
  R_GammaCorrect( buffer + 18, glConfig.vidWidth * glConfig.vidHeight * 3 );
 }

 ri.FS_WriteFile( fileName, buffer, c );

 ri.Hunk_FreeTempMemory( buffer );
}
