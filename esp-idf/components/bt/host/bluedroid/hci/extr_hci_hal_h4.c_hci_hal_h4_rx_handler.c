
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_q; } ;


 int fixed_queue_process (int ) ;
 TYPE_1__ hci_hal_env ;

__attribute__((used)) static void hci_hal_h4_rx_handler(void *arg)
{
    fixed_queue_process(hci_hal_env.rx_q);
}
