
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * rx_q; } ;


 int fixed_queue_free (int *,int ) ;
 TYPE_1__ hci_hal_env ;
 int osi_free_func ;

__attribute__((used)) static void hci_hal_env_deinit(void)
{
    fixed_queue_free(hci_hal_env.rx_q, osi_free_func);
    hci_hal_env.rx_q = ((void*)0);
}
