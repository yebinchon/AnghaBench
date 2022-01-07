
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int rx_new_packet; } ;
struct TYPE_8__ {TYPE_2__ slc0_int_clr; } ;
struct TYPE_5__ {int rx_done; } ;
struct TYPE_7__ {TYPE_1__ slc0_int_raw; } ;


 TYPE_4__ HOST ;
 TYPE_3__ SLC ;
 int send_start_transmission (int *) ;
 int send_stop_ll_operation () ;
 int start_desc ;

__attribute__((used)) static inline void send_isr_invoker_enable(void)
{

    send_start_transmission(&start_desc);

    while(!SLC.slc0_int_raw.rx_done);
    HOST.slc0_int_clr.rx_new_packet = 1;
    send_stop_ll_operation();
}
