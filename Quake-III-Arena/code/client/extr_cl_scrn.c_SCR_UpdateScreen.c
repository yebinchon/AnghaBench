
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ stereoEnabled; } ;
struct TYPE_8__ {TYPE_1__ glconfig; } ;
struct TYPE_7__ {scalar_t__ integer; } ;
struct TYPE_6__ {int (* EndFrame ) (int *,int *) ;} ;


 int Com_Error (int ,char*) ;
 int ERR_FATAL ;
 int SCR_DrawScreenField (int ) ;
 int STEREO_CENTER ;
 int STEREO_LEFT ;
 int STEREO_RIGHT ;
 TYPE_4__ cls ;
 TYPE_3__* com_speeds ;
 TYPE_2__ re ;
 int scr_initialized ;
 int stub1 (int *,int *) ;
 int stub2 (int *,int *) ;
 int time_backend ;
 int time_frontend ;

void SCR_UpdateScreen( void ) {
 static int recursive;

 if ( !scr_initialized ) {
  return;
 }

 if ( ++recursive > 2 ) {
  Com_Error( ERR_FATAL, "SCR_UpdateScreen: recursively called" );
 }
 recursive = 1;


 if ( cls.glconfig.stereoEnabled ) {
  SCR_DrawScreenField( STEREO_LEFT );
  SCR_DrawScreenField( STEREO_RIGHT );
 } else {
  SCR_DrawScreenField( STEREO_CENTER );
 }

 if ( com_speeds->integer ) {
  re.EndFrame( &time_frontend, &time_backend );
 } else {
  re.EndFrame( ((void*)0), ((void*)0) );
 }

 recursive = 0;
}
