
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ v_display; } ;
struct TYPE_3__ {TYPE_2__ video; } ;


 int PE_initialize_console (TYPE_2__*,int ) ;
 TYPE_1__ PE_state ;
 int check_for_panic_log () ;
 int kPEGraphicsMode ;
 int kPETextMode ;

void
PE_create_console(void)
{




 check_for_panic_log();

 if (PE_state.video.v_display)
  PE_initialize_console(&PE_state.video, kPEGraphicsMode);
 else
  PE_initialize_console(&PE_state.video, kPETextMode);
}
