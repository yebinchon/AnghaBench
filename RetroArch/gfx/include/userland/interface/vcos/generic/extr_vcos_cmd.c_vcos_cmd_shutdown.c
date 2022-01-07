
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * cmd_entry; int lock; } ;


 TYPE_1__ cmd_globals ;
 int vcos_free (int *) ;
 int vcos_mutex_delete (int *) ;

void vcos_cmd_shutdown( void )
{
    vcos_mutex_delete( &cmd_globals.lock );

    vcos_free( cmd_globals.cmd_entry );
    cmd_globals.cmd_entry = ((void*)0);
}
