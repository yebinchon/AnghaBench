
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int integer; } ;
struct TYPE_5__ {int (* CM_DrawDebugSurface ) (int ) ;} ;
struct TYPE_4__ {int whiteImage; } ;


 int CT_FRONT_SIDED ;
 int GL_Bind (int ) ;
 int GL_Cull (int ) ;
 int R_DebugPolygon ;
 int R_SyncRenderThread () ;
 TYPE_3__* r_debugSurface ;
 TYPE_2__ ri ;
 int stub1 (int ) ;
 TYPE_1__ tr ;

void R_DebugGraphics( void ) {
 if ( !r_debugSurface->integer ) {
  return;
 }


 R_SyncRenderThread();

 GL_Bind( tr.whiteImage);
 GL_Cull( CT_FRONT_SIDED );
 ri.CM_DrawDebugSurface( R_DebugPolygon );
}
