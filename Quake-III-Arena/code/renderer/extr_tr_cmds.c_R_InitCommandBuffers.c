
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int smpActive; } ;
struct TYPE_5__ {scalar_t__ integer; } ;
struct TYPE_4__ {int (* Printf ) (int ,char*) ;} ;


 scalar_t__ GLimp_SpawnRenderThread (int ) ;
 int PRINT_ALL ;
 int RB_RenderThread ;
 TYPE_3__ glConfig ;
 int qfalse ;
 int qtrue ;
 TYPE_2__* r_smp ;
 TYPE_1__ ri ;
 int stub1 (int ,char*) ;
 int stub2 (int ,char*) ;
 int stub3 (int ,char*) ;

void R_InitCommandBuffers( void ) {
 glConfig.smpActive = qfalse;
 if ( r_smp->integer ) {
  ri.Printf( PRINT_ALL, "Trying SMP acceleration...\n" );
  if ( GLimp_SpawnRenderThread( RB_RenderThread ) ) {
   ri.Printf( PRINT_ALL, "...succeeded.\n" );
   glConfig.smpActive = qtrue;
  } else {
   ri.Printf( PRINT_ALL, "...failed.\n" );
  }
 }
}
