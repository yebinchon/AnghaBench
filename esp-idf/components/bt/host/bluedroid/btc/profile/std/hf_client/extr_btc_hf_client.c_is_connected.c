
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int address; } ;
typedef TYPE_3__ bt_bdaddr_t ;
struct TYPE_6__ {int address; } ;
struct TYPE_7__ {scalar_t__ state; TYPE_1__ connected_bda; } ;
struct TYPE_9__ {TYPE_2__ btc_hf_client_cb; } ;
typedef int BOOLEAN ;


 scalar_t__ ESP_HF_CLIENT_CONNECTION_STATE_CONNECTED ;
 scalar_t__ ESP_HF_CLIENT_CONNECTION_STATE_SLC_CONNECTED ;
 int FALSE ;
 int TRUE ;
 scalar_t__ bdcmp (int ,int ) ;
 TYPE_5__ hf_client_local_param ;

__attribute__((used)) static BOOLEAN is_connected(bt_bdaddr_t *bd_addr)
{
    if (((hf_client_local_param.btc_hf_client_cb.state == ESP_HF_CLIENT_CONNECTION_STATE_CONNECTED) ||
            (hf_client_local_param.btc_hf_client_cb.state == ESP_HF_CLIENT_CONNECTION_STATE_SLC_CONNECTED))&&
        ((bd_addr == ((void*)0)) || (bdcmp(bd_addr->address, hf_client_local_param.btc_hf_client_cb.connected_bda.address) == 0)))
        return TRUE;
    return FALSE;
}
