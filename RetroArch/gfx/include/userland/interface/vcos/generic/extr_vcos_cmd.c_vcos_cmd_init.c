
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * cmd_entry; scalar_t__ num_cmd_alloc; scalar_t__ num_cmd_entries; int lock; } ;


 TYPE_1__ cmd_globals ;
 int vcos_get_build_strings ;
 int vcos_keep_static_strings ;
 int vcos_mutex_create (int *,char*) ;

__attribute__((used)) static void vcos_cmd_init( void )
{
    vcos_mutex_create( &cmd_globals.lock, "vcos_cmd" );

    cmd_globals.num_cmd_entries = 0;
    cmd_globals.num_cmd_alloc = 0;
    cmd_globals.cmd_entry = ((void*)0);




}
