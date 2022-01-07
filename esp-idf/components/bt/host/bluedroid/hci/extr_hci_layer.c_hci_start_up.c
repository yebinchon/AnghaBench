
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* open ) (int *,int *) ;} ;
struct TYPE_3__ {int (* init ) (int *) ;} ;


 int HCI_HOST_TASK_NAME ;
 int HCI_HOST_TASK_PINNED_TO_CORE ;
 int HCI_HOST_TASK_PRIO ;
 int HCI_HOST_TASK_STACK_SIZE ;
 TYPE_2__* hal ;
 int hal_callbacks ;
 int hci_host_startup_flag ;
 int * hci_host_thread ;
 scalar_t__ hci_layer_init_env () ;
 int hci_shut_down () ;
 int * osi_thread_create (int ,int ,int ,int ,int) ;
 TYPE_1__* packet_fragmenter ;
 int packet_fragmenter_callbacks ;
 int stub1 (int *) ;
 int stub2 (int *,int *) ;

int hci_start_up(void)
{
    if (hci_layer_init_env()) {
        goto error;
    }

    hci_host_thread = osi_thread_create(HCI_HOST_TASK_NAME, HCI_HOST_TASK_STACK_SIZE, HCI_HOST_TASK_PRIO, HCI_HOST_TASK_PINNED_TO_CORE, 2);
    if (hci_host_thread == ((void*)0)) {
        return -2;
    }

    packet_fragmenter->init(&packet_fragmenter_callbacks);
    hal->open(&hal_callbacks, hci_host_thread);

    hci_host_startup_flag = 1;
    return 0;
error:
    hci_shut_down();
    return -1;
}
