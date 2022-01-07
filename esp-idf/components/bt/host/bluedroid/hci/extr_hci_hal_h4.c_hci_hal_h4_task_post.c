
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int hci_h4_thread ;
 int hci_hal_h4_rx_handler ;
 int osi_thread_post (int ,int ,int *,int,int ) ;

bool hci_hal_h4_task_post(uint32_t timeout)
{
    return osi_thread_post(hci_h4_thread, hci_hal_h4_rx_handler, ((void*)0), 1, timeout);
}
