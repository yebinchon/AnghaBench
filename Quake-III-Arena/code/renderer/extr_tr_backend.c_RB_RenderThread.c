
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* GLimp_RendererSleep () ;
 int RB_ExecuteRenderCommands (void const*) ;
 int qfalse ;
 int qtrue ;
 int renderThreadActive ;

void RB_RenderThread( void ) {
 const void *data;


 while ( 1 ) {

  data = GLimp_RendererSleep();

  if ( !data ) {
   return;
  }

  renderThreadActive = qtrue;

  RB_ExecuteRenderCommands( data );

  renderThreadActive = qfalse;
 }
}
