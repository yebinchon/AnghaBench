
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_2__ {int kdebug_flags; } ;


 int KDBG_WRAPPED ;
 int create_buffers (int ) ;
 TYPE_1__ kd_ctrl_page ;

int
kdbg_bootstrap(boolean_t early_trace)
{
 kd_ctrl_page.kdebug_flags &= ~KDBG_WRAPPED;

 return (create_buffers(early_trace));
}
