
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int msec; } ;
struct TYPE_12__ {int smpFrame; TYPE_2__ pc; } ;
struct TYPE_7__ {void const* cmds; } ;
struct TYPE_11__ {TYPE_1__ commands; } ;
struct TYPE_10__ {int integer; } ;
struct TYPE_9__ {int (* Milliseconds ) () ;} ;


 void* RB_DrawBuffer (void const*) ;
 void* RB_DrawSurfs (void const*) ;
 void* RB_SetColor (void const*) ;
 void* RB_StretchPic (void const*) ;
 void* RB_SwapBuffers (void const*) ;
 void* RB_TakeScreenshotCmd (void const*) ;







 TYPE_6__ backEnd ;
 TYPE_5__** backEndData ;
 TYPE_4__* r_smp ;
 TYPE_3__ ri ;
 int stub1 () ;
 int stub2 () ;

void RB_ExecuteRenderCommands( const void *data ) {
 int t1, t2;

 t1 = ri.Milliseconds ();

 if ( !r_smp->integer || data == backEndData[0]->commands.cmds ) {
  backEnd.smpFrame = 0;
 } else {
  backEnd.smpFrame = 1;
 }

 while ( 1 ) {
  switch ( *(const int *)data ) {
  case 130:
   data = RB_SetColor( data );
   break;
  case 129:
   data = RB_StretchPic( data );
   break;
  case 133:
   data = RB_DrawSurfs( data );
   break;
  case 134:
   data = RB_DrawBuffer( data );
   break;
  case 128:
   data = RB_SwapBuffers( data );
   break;
  case 131:
   data = RB_TakeScreenshotCmd( data );
   break;

  case 132:
  default:

   t2 = ri.Milliseconds ();
   backEnd.pc.msec = t2 - t1;
   return;
  }
 }

}
