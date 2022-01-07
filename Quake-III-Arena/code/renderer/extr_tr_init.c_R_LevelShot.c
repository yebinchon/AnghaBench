
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int byte ;
struct TYPE_8__ {int vidWidth; int vidHeight; scalar_t__ deviceSupportsGamma; } ;
struct TYPE_7__ {int* (* Hunk_AllocateTempMemory ) (int) ;int (* Printf ) (int ,char*,char*) ;int (* Hunk_FreeTempMemory ) (int*) ;int (* FS_WriteFile ) (char*,int*,int) ;} ;
struct TYPE_6__ {scalar_t__ overbrightBits; TYPE_1__* world; } ;
struct TYPE_5__ {char* baseName; } ;


 int Com_Memset (int*,int ,int) ;
 int GL_RGB ;
 int GL_UNSIGNED_BYTE ;
 int MAX_OSPATH ;
 int PRINT_ALL ;
 int R_GammaCorrect (int*,int) ;
 TYPE_4__ glConfig ;
 int qglReadPixels (int ,int ,int,int,int ,int ,int*) ;
 TYPE_3__ ri ;
 int sprintf (char*,char*,char*) ;
 int* stub1 (int) ;
 int* stub2 (int) ;
 int stub3 (char*,int*,int) ;
 int stub4 (int*) ;
 int stub5 (int*) ;
 int stub6 (int ,char*,char*) ;
 TYPE_2__ tr ;

void R_LevelShot( void ) {
 char checkname[MAX_OSPATH];
 byte *buffer;
 byte *source;
 byte *src, *dst;
 int x, y;
 int r, g, b;
 float xScale, yScale;
 int xx, yy;

 sprintf( checkname, "levelshots/%s.tga", tr.world->baseName );

 source = ri.Hunk_AllocateTempMemory( glConfig.vidWidth * glConfig.vidHeight * 3 );

 buffer = ri.Hunk_AllocateTempMemory( 128 * 128*3 + 18);
 Com_Memset (buffer, 0, 18);
 buffer[2] = 2;
 buffer[12] = 128;
 buffer[14] = 128;
 buffer[16] = 24;

 qglReadPixels( 0, 0, glConfig.vidWidth, glConfig.vidHeight, GL_RGB, GL_UNSIGNED_BYTE, source );


 xScale = glConfig.vidWidth / 512.0f;
 yScale = glConfig.vidHeight / 384.0f;
 for ( y = 0 ; y < 128 ; y++ ) {
  for ( x = 0 ; x < 128 ; x++ ) {
   r = g = b = 0;
   for ( yy = 0 ; yy < 3 ; yy++ ) {
    for ( xx = 0 ; xx < 4 ; xx++ ) {
     src = source + 3 * ( glConfig.vidWidth * (int)( (y*3+yy)*yScale ) + (int)( (x*4+xx)*xScale ) );
     r += src[0];
     g += src[1];
     b += src[2];
    }
   }
   dst = buffer + 18 + 3 * ( y * 128 + x );
   dst[0] = b / 12;
   dst[1] = g / 12;
   dst[2] = r / 12;
  }
 }


 if ( ( tr.overbrightBits > 0 ) && glConfig.deviceSupportsGamma ) {
  R_GammaCorrect( buffer + 18, 128 * 128 * 3 );
 }

 ri.FS_WriteFile( checkname, buffer, 128 * 128*3 + 18 );

 ri.Hunk_FreeTempMemory( buffer );
 ri.Hunk_FreeTempMemory( source );

 ri.Printf( PRINT_ALL, "Wrote %s\n", checkname );
}
