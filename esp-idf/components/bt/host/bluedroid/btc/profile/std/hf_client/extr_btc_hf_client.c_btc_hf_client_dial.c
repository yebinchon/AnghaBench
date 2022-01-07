
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int bt_status_t ;
struct TYPE_3__ {int handle; } ;
struct TYPE_4__ {TYPE_1__ btc_hf_client_cb; } ;


 int BTA_HF_CLIENT_AT_CMD_ATD ;
 int BTA_HF_CLIENT_AT_CMD_BLDN ;
 int BTA_HfClientSendAT (int ,int ,int ,int ,char const*) ;
 int BT_STATUS_SUCCESS ;
 int CHECK_HF_CLIENT_SLC_CONNECTED () ;
 TYPE_2__ hf_client_local_param ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static bt_status_t btc_hf_client_dial(const char *number)
{
    CHECK_HF_CLIENT_SLC_CONNECTED();

    if (strlen(number) != 0)
    {
        BTA_HfClientSendAT(hf_client_local_param.btc_hf_client_cb.handle, BTA_HF_CLIENT_AT_CMD_ATD, 0, 0, number);
    }
    else
    {
        BTA_HfClientSendAT(hf_client_local_param.btc_hf_client_cb.handle, BTA_HF_CLIENT_AT_CMD_BLDN, 0, 0, ((void*)0));
    }

    return BT_STATUS_SUCCESS;
}
