
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int bt_status_t ;
typedef int bt_bdaddr_t ;
struct TYPE_3__ {int handle; } ;
struct TYPE_4__ {TYPE_1__ btc_hf_client_cb; } ;


 int BTA_HfClientAudioClose (int ) ;
 int BT_STATUS_FAIL ;
 int BT_STATUS_SUCCESS ;
 int CHECK_HF_CLIENT_SLC_CONNECTED () ;
 TYPE_2__ hf_client_local_param ;
 scalar_t__ is_connected (int *) ;

bt_status_t btc_hf_client_disconnect_audio( bt_bdaddr_t *bd_addr )
{
    CHECK_HF_CLIENT_SLC_CONNECTED();

    if (is_connected(bd_addr))
    {
        BTA_HfClientAudioClose(hf_client_local_param.btc_hf_client_cb.handle);
        return BT_STATUS_SUCCESS;
    }

    return BT_STATUS_FAIL;
}
