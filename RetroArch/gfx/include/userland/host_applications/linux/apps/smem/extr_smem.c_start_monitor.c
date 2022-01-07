
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 int SIGTERM ;
 scalar_t__ VCOS_SUCCESS ;
 int control_c ;
 int quit_event ;
 int signal (int ,int ) ;
 scalar_t__ vcos_event_create (int *,char*) ;
 int vcos_log_info (char*) ;

__attribute__((used)) static int start_monitor( void )
{
   if ( vcos_event_create( &quit_event, "smem" ) != VCOS_SUCCESS )
   {
      vcos_log_info( "Failed to create quit event" );

      return -1;
   }


   signal( SIGINT, control_c );
   signal( SIGTERM, control_c );

   return 0;
}
