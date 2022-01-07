
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rx_done; } ;
struct TYPE_4__ {TYPE_1__ slc0_int_clr; } ;


 TYPE_2__ SLC ;

__attribute__((used)) static inline void send_isr_invoker_disable(void)
{
    SLC.slc0_int_clr.rx_done = 1;
}
