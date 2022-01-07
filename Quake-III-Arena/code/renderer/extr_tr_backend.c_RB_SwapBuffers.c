
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int swapBuffersCommand_t ;
struct TYPE_9__ {long c_overDraw; } ;
struct TYPE_16__ {int projection2D; TYPE_1__ pc; } ;
struct TYPE_15__ {int vidWidth; int vidHeight; } ;
struct TYPE_14__ {int finishCalled; } ;
struct TYPE_13__ {scalar_t__ integer; } ;
struct TYPE_12__ {scalar_t__ integer; } ;
struct TYPE_11__ {unsigned char* (* Hunk_AllocateTempMemory ) (int) ;int (* Hunk_FreeTempMemory ) (unsigned char*) ;} ;
struct TYPE_10__ {scalar_t__ numIndexes; } ;


 int GL_STENCIL_INDEX ;
 int GL_UNSIGNED_BYTE ;
 int GLimp_EndFrame () ;
 int GLimp_LogComment (char*) ;
 int RB_EndSurface () ;
 int RB_ShowImages () ;
 TYPE_8__ backEnd ;
 TYPE_7__ glConfig ;
 TYPE_6__ glState ;
 int qfalse ;
 int qglFinish () ;
 int qglReadPixels (int ,int ,int,int,int ,int ,unsigned char*) ;
 TYPE_5__* r_measureOverdraw ;
 TYPE_4__* r_showImages ;
 TYPE_3__ ri ;
 unsigned char* stub1 (int) ;
 int stub2 (unsigned char*) ;
 TYPE_2__ tess ;

const void *RB_SwapBuffers( const void *data ) {
 const swapBuffersCommand_t *cmd;


 if ( tess.numIndexes ) {
  RB_EndSurface();
 }


 if ( r_showImages->integer ) {
  RB_ShowImages();
 }

 cmd = (const swapBuffersCommand_t *)data;



 if ( r_measureOverdraw->integer ) {
  int i;
  long sum = 0;
  unsigned char *stencilReadback;

  stencilReadback = ri.Hunk_AllocateTempMemory( glConfig.vidWidth * glConfig.vidHeight );
  qglReadPixels( 0, 0, glConfig.vidWidth, glConfig.vidHeight, GL_STENCIL_INDEX, GL_UNSIGNED_BYTE, stencilReadback );

  for ( i = 0; i < glConfig.vidWidth * glConfig.vidHeight; i++ ) {
   sum += stencilReadback[i];
  }

  backEnd.pc.c_overDraw += sum;
  ri.Hunk_FreeTempMemory( stencilReadback );
 }


 if ( !glState.finishCalled ) {
  qglFinish();
 }

 GLimp_LogComment( "***************** RB_SwapBuffers *****************\n\n\n" );

 GLimp_EndFrame();

 backEnd.projection2D = qfalse;

 return (const void *)(cmd + 1);
}
