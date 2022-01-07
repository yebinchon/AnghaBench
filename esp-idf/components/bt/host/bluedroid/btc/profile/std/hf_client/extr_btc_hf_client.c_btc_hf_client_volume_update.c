
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int esp_hf_volume_control_target_t ;
typedef int bt_status_t ;
struct TYPE_3__ {int handle; } ;
struct TYPE_4__ {TYPE_1__ btc_hf_client_cb; } ;


 int BTA_HF_CLIENT_AT_CMD_VGM ;
 int BTA_HF_CLIENT_AT_CMD_VGS ;
 int BTA_HfClientSendAT (int ,int ,int,int ,int *) ;
 int BT_STATUS_SUCCESS ;
 int BT_STATUS_UNSUPPORTED ;
 int CHECK_HF_CLIENT_SLC_CONNECTED () ;


 TYPE_2__ hf_client_local_param ;

__attribute__((used)) static bt_status_t btc_hf_client_volume_update(esp_hf_volume_control_target_t type, int volume)
{
    CHECK_HF_CLIENT_SLC_CONNECTED();

    switch (type)
    {
        case 128:
            BTA_HfClientSendAT(hf_client_local_param.btc_hf_client_cb.handle, BTA_HF_CLIENT_AT_CMD_VGS, volume, 0, ((void*)0));
            break;
        case 129:
            BTA_HfClientSendAT(hf_client_local_param.btc_hf_client_cb.handle, BTA_HF_CLIENT_AT_CMD_VGM, volume, 0, ((void*)0));
            break;
        default:
            return BT_STATUS_UNSUPPORTED;
    }

    return BT_STATUS_SUCCESS;
}
