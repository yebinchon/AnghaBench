
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_4__ {int (* Cmd_RemoveCommand ) (char*) ;int (* Printf ) (int ,char*,scalar_t__) ;} ;
struct TYPE_3__ {scalar_t__ registered; } ;


 int GLimp_Shutdown () ;
 int PRINT_ALL ;
 int R_DeleteTextures () ;
 int R_DoneFreeType () ;
 int R_ShutdownCommandBuffers () ;
 int R_SyncRenderThread () ;
 scalar_t__ qfalse ;
 TYPE_2__ ri ;
 int stub1 (int ,char*,scalar_t__) ;
 int stub10 (char*) ;
 int stub2 (char*) ;
 int stub3 (char*) ;
 int stub4 (char*) ;
 int stub5 (char*) ;
 int stub6 (char*) ;
 int stub7 (char*) ;
 int stub8 (char*) ;
 int stub9 (char*) ;
 TYPE_1__ tr ;

void RE_Shutdown( qboolean destroyWindow ) {

 ri.Printf( PRINT_ALL, "RE_Shutdown( %i )\n", destroyWindow );

 ri.Cmd_RemoveCommand ("modellist");
 ri.Cmd_RemoveCommand ("screenshotJPEG");
 ri.Cmd_RemoveCommand ("screenshot");
 ri.Cmd_RemoveCommand ("imagelist");
 ri.Cmd_RemoveCommand ("shaderlist");
 ri.Cmd_RemoveCommand ("skinlist");
 ri.Cmd_RemoveCommand ("gfxinfo");
 ri.Cmd_RemoveCommand( "modelist" );
 ri.Cmd_RemoveCommand( "shaderstate" );


 if ( tr.registered ) {
  R_SyncRenderThread();
  R_ShutdownCommandBuffers();
  R_DeleteTextures();
 }

 R_DoneFreeType();


 if ( destroyWindow ) {
  GLimp_Shutdown();
 }

 tr.registered = qfalse;
}
