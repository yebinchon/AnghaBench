
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stop; } ;
struct TYPE_4__ {TYPE_1__ slc0_rx_link; } ;


 TYPE_2__ SLC ;

__attribute__((used)) static inline void send_stop_ll_operation(void)
{
    SLC.slc0_rx_link.stop = 1;
}
