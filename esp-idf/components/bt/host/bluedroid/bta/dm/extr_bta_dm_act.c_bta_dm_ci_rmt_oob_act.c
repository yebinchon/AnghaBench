
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_4__ {scalar_t__ accept; int r; int c; int bd_addr; } ;
struct TYPE_5__ {TYPE_1__ ci_rmt_oob; } ;
typedef TYPE_2__ tBTA_DM_MSG ;


 int BTM_NOT_AUTHORIZED ;
 int BTM_RemoteOobDataReply (int ,int ,int ,int ) ;
 int BTM_SUCCESS ;
 scalar_t__ TRUE ;

void bta_dm_ci_rmt_oob_act(tBTA_DM_MSG *p_data)
{
    tBTM_STATUS res = BTM_NOT_AUTHORIZED;

    if (p_data->ci_rmt_oob.accept == TRUE) {
        res = BTM_SUCCESS;
    }
    BTM_RemoteOobDataReply(res, p_data->ci_rmt_oob.bd_addr,
                           p_data->ci_rmt_oob.c, p_data->ci_rmt_oob.r );
}
