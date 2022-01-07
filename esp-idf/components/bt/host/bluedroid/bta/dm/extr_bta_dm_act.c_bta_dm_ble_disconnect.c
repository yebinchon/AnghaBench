
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int remote_bda; } ;
struct TYPE_5__ {TYPE_1__ ble_disconnect; } ;
typedef TYPE_2__ tBTA_DM_MSG ;


 int L2CAP_ATT_CID ;
 int L2CA_RemoveFixedChnl (int ,int ) ;

void bta_dm_ble_disconnect (tBTA_DM_MSG *p_data)
{
    L2CA_RemoveFixedChnl(L2CAP_ATT_CID, p_data->ble_disconnect.remote_bda);
}
