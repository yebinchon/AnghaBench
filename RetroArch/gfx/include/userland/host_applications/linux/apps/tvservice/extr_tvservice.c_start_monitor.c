
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR (char*) ;
 int SIGINT ;
 int SIGTERM ;
 scalar_t__ VCOS_SUCCESS ;
 int control_c ;
 int quit_event ;
 int signal (int ,int ) ;
 int tvservice_callback ;
 int vc_tv_register_callback (int *,int *) ;
 scalar_t__ vcos_event_create (int *,char*) ;

__attribute__((used)) static int start_monitor( void )
{
   if ( vcos_event_create( &quit_event, "tvservice" ) != VCOS_SUCCESS )
   {
      LOG_ERR( "Failed to create quit event" );

      return -1;
   }


   signal( SIGINT, control_c );
   signal( SIGTERM, control_c );

   vc_tv_register_callback( &tvservice_callback, ((void*)0) );

   return 0;
}
