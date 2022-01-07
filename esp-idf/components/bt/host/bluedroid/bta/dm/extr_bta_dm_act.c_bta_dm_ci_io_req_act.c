
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTM_AUTH_REQ ;
struct TYPE_4__ {int oob_data; int io_cap; int bd_addr; scalar_t__ auth_req; } ;
struct TYPE_5__ {TYPE_1__ ci_io_req; } ;
typedef TYPE_2__ tBTA_DM_MSG ;


 int BTM_AUTH_AP_NO ;
 int BTM_AUTH_AP_YES ;
 int BTM_IoCapRsp (int ,int ,int ,int ) ;

void bta_dm_ci_io_req_act(tBTA_DM_MSG *p_data)
{
    tBTM_AUTH_REQ auth_req = BTM_AUTH_AP_NO;
    if (p_data->ci_io_req.auth_req) {
        auth_req = BTM_AUTH_AP_YES;
    }
    BTM_IoCapRsp(p_data->ci_io_req.bd_addr, p_data->ci_io_req.io_cap,
                 p_data->ci_io_req.oob_data, auth_req);
}
