
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rx_eof; } ;
struct TYPE_4__ {TYPE_1__ slc0_int_ena; } ;


 TYPE_2__ SLC ;
 int send_isr_invoker_enable () ;

__attribute__((used)) static inline void send_intr_enable(void)
{
    SLC.slc0_int_ena.rx_eof = 1;
    send_isr_invoker_enable();
}
