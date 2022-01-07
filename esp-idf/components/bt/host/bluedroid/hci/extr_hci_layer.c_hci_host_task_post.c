
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int hci_host_thread ;
 int hci_host_thread_handler ;
 int osi_thread_post (int ,int ,int *,int ,int ) ;

bool hci_host_task_post(uint32_t timeout)
{
    return osi_thread_post(hci_host_thread, hci_host_thread_handler, ((void*)0), 0, timeout);
}
