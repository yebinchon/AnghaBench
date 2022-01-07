
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct TYPE_5__ {int completed_packets; } ;
typedef TYPE_1__ tL2C_LCB ;
struct TYPE_6__ {int offset; scalar_t__* data; } ;
typedef TYPE_2__ BT_HDR ;


 scalar_t__ DATA_TYPE_ACL ;
 int HCI_DATA_HANDLE_MASK ;
 int MAX_L2CAP_LINKS ;
 int STREAM_TO_UINT16 (int,scalar_t__*) ;
 int STREAM_TO_UINT8 (scalar_t__,scalar_t__*) ;
 int btsnd_hcic_host_num_xmitted_pkts (scalar_t__,int*,int*) ;
 scalar_t__ esp_vhci_host_check_send_available () ;
 scalar_t__ l2cu_find_completed_packets (int*,int*) ;
 TYPE_1__* l2cu_find_lcb_by_handle (int) ;

__attribute__((used)) static void hci_packet_complete(BT_HDR *packet){
    uint8_t type, num_handle;
    uint16_t handle;
    uint16_t handles[MAX_L2CAP_LINKS + 4];
    uint16_t num_packets[MAX_L2CAP_LINKS + 4];
    uint8_t *stream = packet->data + packet->offset;
    tL2C_LCB *p_lcb = ((void*)0);

    STREAM_TO_UINT8(type, stream);
    if (type == DATA_TYPE_ACL ) {
        STREAM_TO_UINT16(handle, stream);
        handle = handle & HCI_DATA_HANDLE_MASK;
        p_lcb = l2cu_find_lcb_by_handle(handle);
        if (p_lcb) {
            p_lcb->completed_packets++;
        }
        if (esp_vhci_host_check_send_available()){
            num_handle = l2cu_find_completed_packets(handles, num_packets);
            if (num_handle > 0){
                btsnd_hcic_host_num_xmitted_pkts (num_handle, handles, num_packets);
            }
        } else {

        }

    }
}
