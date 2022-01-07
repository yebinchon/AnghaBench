
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int quit_event ;
 int vcos_event_signal (int *) ;
 int vcos_log_info (char*) ;

__attribute__((used)) static void control_c( int signum )
{
    (void)signum;

    vcos_log_info( "Shutting down..." );

    vcos_event_signal( &quit_event );
}
