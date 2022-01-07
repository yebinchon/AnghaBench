
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cmd_Argc () ;
 int Cmd_Argv (int) ;
 int atoi (int ) ;
 int cmd_wait ;

void Cmd_Wait_f( void ) {
 if ( Cmd_Argc() == 2 ) {
  cmd_wait = atoi( Cmd_Argv( 1 ) );
 } else {
  cmd_wait = 1;
 }
}
