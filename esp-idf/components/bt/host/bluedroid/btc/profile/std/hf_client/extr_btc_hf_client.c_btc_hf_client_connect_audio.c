
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int remote_bda; int state; } ;
struct TYPE_9__ {TYPE_1__ audio_stat; } ;
typedef TYPE_3__ esp_hf_client_cb_param_t ;
typedef int esp_bd_addr_t ;
typedef int bt_status_t ;
typedef int bt_bdaddr_t ;
struct TYPE_8__ {int peer_feat; int connected_bda; int handle; } ;
struct TYPE_10__ {TYPE_2__ btc_hf_client_cb; } ;


 int BTA_HF_CLIENT_AT_CMD_BCC ;
 int BTA_HF_CLIENT_PEER_CODEC ;
 int BTA_HfClientAudioOpen (int ) ;
 int BTA_HfClientSendAT (int ,int ,int ,int ,int *) ;
 int BT_STATUS_FAIL ;
 int BT_STATUS_SUCCESS ;
 int CHECK_HF_CLIENT_SLC_CONNECTED () ;
 int ESP_HF_CLIENT_AUDIO_STATE_CONNECTING ;
 int ESP_HF_CLIENT_AUDIO_STATE_EVT ;
 int btc_hf_client_cb_to_app (int ,TYPE_3__*) ;
 TYPE_5__ hf_client_local_param ;
 scalar_t__ is_connected (int *) ;
 int memcpy (int ,int *,int) ;
 int memset (TYPE_3__*,int ,int) ;

bt_status_t btc_hf_client_connect_audio( bt_bdaddr_t *bd_addr )
{
    CHECK_HF_CLIENT_SLC_CONNECTED();

    if (is_connected(bd_addr))
    {
        if (hf_client_local_param.btc_hf_client_cb.peer_feat & BTA_HF_CLIENT_PEER_CODEC)
        {
            BTA_HfClientSendAT(hf_client_local_param.btc_hf_client_cb.handle, BTA_HF_CLIENT_AT_CMD_BCC, 0, 0, ((void*)0));
        }
        else
        {
            BTA_HfClientAudioOpen(hf_client_local_param.btc_hf_client_cb.handle);
        }


        do {
            esp_hf_client_cb_param_t param;
            memset(&param, 0, sizeof(esp_hf_client_cb_param_t));
            param.audio_stat.state = ESP_HF_CLIENT_AUDIO_STATE_CONNECTING;
            memcpy(param.audio_stat.remote_bda, &hf_client_local_param.btc_hf_client_cb.connected_bda, sizeof(esp_bd_addr_t));
            btc_hf_client_cb_to_app(ESP_HF_CLIENT_AUDIO_STATE_EVT, &param);
        } while (0);

        return BT_STATUS_SUCCESS;
    }

    return BT_STATUS_FAIL;
}
