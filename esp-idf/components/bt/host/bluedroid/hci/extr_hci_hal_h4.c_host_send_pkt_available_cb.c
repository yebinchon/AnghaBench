
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OSI_THREAD_MAX_TIMEOUT ;
 int hci_host_task_post (int ) ;

__attribute__((used)) static void host_send_pkt_available_cb(void)
{


    hci_host_task_post(OSI_THREAD_MAX_TIMEOUT);
}
