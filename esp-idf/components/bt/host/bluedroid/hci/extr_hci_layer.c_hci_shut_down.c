
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* close ) () ;} ;
struct TYPE_3__ {int (* cleanup ) () ;} ;


 TYPE_2__* hal ;
 int hci_host_startup_flag ;
 int * hci_host_thread ;
 int hci_layer_deinit_env () ;
 int osi_thread_free (int *) ;
 TYPE_1__* packet_fragmenter ;
 int stub1 () ;
 int stub2 () ;

void hci_shut_down(void)
{
    hci_host_startup_flag = 0;
    hci_layer_deinit_env();

    packet_fragmenter->cleanup();


    hal->close();

    osi_thread_free(hci_host_thread);
    hci_host_thread = ((void*)0);
}
