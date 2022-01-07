
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int log_fp; } ;


 int fprintf (int ,char*) ;
 TYPE_1__ glw_state ;

void GLimp_LogNewFrame( void )
{
 fprintf( glw_state.log_fp, "*** R_BeginFrame ***\n" );
}
