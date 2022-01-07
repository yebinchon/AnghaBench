
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int esp_hf_chld_type_t ;
typedef int bt_status_t ;
struct TYPE_3__ {int chld_feat; int peer_feat; int handle; } ;
struct TYPE_4__ {TYPE_1__ btc_hf_client_cb; } ;


 int BTA_HF_CLIENT_AT_CMD_CHLD ;
 int BTA_HF_CLIENT_CHLD_MERGE ;
 int BTA_HF_CLIENT_CHLD_MERGE_DETACH ;
 int BTA_HF_CLIENT_CHLD_REL ;
 int BTA_HF_CLIENT_PEER_ECC ;
 int BTA_HF_CLIENT_PEER_FEAT_3WAY ;
 int BTA_HfClientSendAT (int ,int ,int,int,int *) ;
 int BT_STATUS_FAIL ;
 int BT_STATUS_SUCCESS ;
 int BT_STATUS_UNSUPPORTED ;
 int CHECK_HF_CLIENT_SLC_CONNECTED () ;







 TYPE_2__ hf_client_local_param ;

__attribute__((used)) static bt_status_t btc_hf_client_send_chld_cmd(esp_hf_chld_type_t type, int idx)
{
    CHECK_HF_CLIENT_SLC_CONNECTED();

    switch (type)
    {
    case 130:
        if (hf_client_local_param.btc_hf_client_cb.chld_feat & BTA_HF_CLIENT_CHLD_REL)
        {
            BTA_HfClientSendAT(hf_client_local_param.btc_hf_client_cb.handle, BTA_HF_CLIENT_AT_CMD_CHLD, 0, 0, ((void*)0));
            break;
        }
        return BT_STATUS_UNSUPPORTED;
    case 129:

        if (hf_client_local_param.btc_hf_client_cb.peer_feat & BTA_HF_CLIENT_PEER_FEAT_3WAY)
        {
            BTA_HfClientSendAT(hf_client_local_param.btc_hf_client_cb.handle, BTA_HF_CLIENT_AT_CMD_CHLD, 1, 0, ((void*)0));
            break;
        }
        return BT_STATUS_UNSUPPORTED;
    case 134:

        if (hf_client_local_param.btc_hf_client_cb.peer_feat & BTA_HF_CLIENT_PEER_FEAT_3WAY)
        {
            BTA_HfClientSendAT(hf_client_local_param.btc_hf_client_cb.handle, BTA_HF_CLIENT_AT_CMD_CHLD, 2, 0, ((void*)0));
            break;
        }
        return BT_STATUS_UNSUPPORTED;
    case 133:
        if (hf_client_local_param.btc_hf_client_cb.chld_feat & BTA_HF_CLIENT_CHLD_MERGE)
        {
            BTA_HfClientSendAT(hf_client_local_param.btc_hf_client_cb.handle, BTA_HF_CLIENT_AT_CMD_CHLD, 3, 0, ((void*)0));
            break;
        }
        return BT_STATUS_UNSUPPORTED;
    case 132:
        if (hf_client_local_param.btc_hf_client_cb.chld_feat & BTA_HF_CLIENT_CHLD_MERGE_DETACH)
        {
            BTA_HfClientSendAT(hf_client_local_param.btc_hf_client_cb.handle, BTA_HF_CLIENT_AT_CMD_CHLD, 4, 0, ((void*)0));
            break;
        }
        return BT_STATUS_UNSUPPORTED;
    case 128:
        if (hf_client_local_param.btc_hf_client_cb.peer_feat & BTA_HF_CLIENT_PEER_ECC)
        {
            if (idx < 1)
            {
                return BT_STATUS_FAIL;
            }
            BTA_HfClientSendAT(hf_client_local_param.btc_hf_client_cb.handle, BTA_HF_CLIENT_AT_CMD_CHLD, 1, idx, ((void*)0));
            break;
        }
        return BT_STATUS_UNSUPPORTED;
    case 131:
        if (hf_client_local_param.btc_hf_client_cb.peer_feat & BTA_HF_CLIENT_PEER_ECC)
        {
            if (idx < 1)
            {
                return BT_STATUS_FAIL;
            }
            BTA_HfClientSendAT(hf_client_local_param.btc_hf_client_cb.handle, BTA_HF_CLIENT_AT_CMD_CHLD, 2, idx, ((void*)0));
            break;
        }
        return BT_STATUS_UNSUPPORTED;

    }
    return BT_STATUS_SUCCESS;
}
