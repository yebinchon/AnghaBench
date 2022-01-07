
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ v_display; } ;
struct TYPE_3__ {TYPE_2__ video; } ;


 scalar_t__ GRAPHICS_MODE ;
 int PE_initialize_console (TYPE_2__*,int ) ;
 TYPE_1__ PE_state ;
 int kPEGraphicsMode ;
 int kPETextMode ;

void PE_create_console( void )
{
    if ( PE_state.video.v_display == GRAPHICS_MODE )
        PE_initialize_console( &PE_state.video, kPEGraphicsMode );
    else
        PE_initialize_console( &PE_state.video, kPETextMode );
}
