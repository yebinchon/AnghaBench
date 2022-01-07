
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int osi_thread_t ;
typedef int hci_hal_callbacks_t ;


 scalar_t__ BLE_ADV_REPORT_FLOW_CONTROL_NUM ;
 scalar_t__ ESP_OK ;
 int HCI_HAL_SERIAL_BUFFER_SIZE ;
 scalar_t__ L2CAP_HOST_FC_ACL_BUFS ;
 scalar_t__ QUEUE_SIZE_MAX ;
 int assert (int ) ;
 int const* callbacks ;
 scalar_t__ esp_vhci_host_register_callback (int *) ;
 int * hci_h4_thread ;
 int hci_hal_env_init (int ,scalar_t__) ;
 int vhci_host_cb ;

__attribute__((used)) static bool hal_open(const hci_hal_callbacks_t *upper_callbacks, void *task_thread)
{
    assert(upper_callbacks != ((void*)0));
    assert(task_thread != ((void*)0));

    callbacks = upper_callbacks;

    hci_hal_env_init(HCI_HAL_SERIAL_BUFFER_SIZE, BLE_ADV_REPORT_FLOW_CONTROL_NUM + L2CAP_HOST_FC_ACL_BUFS + QUEUE_SIZE_MAX);




    hci_h4_thread = (osi_thread_t *)task_thread;


    if (esp_vhci_host_register_callback(&vhci_host_cb) != ESP_OK) {
        return 0;
    }

    return 1;
}
