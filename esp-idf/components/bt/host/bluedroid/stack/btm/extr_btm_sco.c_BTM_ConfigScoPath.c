
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_STATUS ;
typedef scalar_t__ tBTM_SCO_ROUTE_TYPE ;
typedef int tBTM_SCO_PCM_PARAM ;
typedef int tBTM_SCO_DATA_CB ;
struct TYPE_3__ {int * p_data_cb; scalar_t__ sco_path; } ;
struct TYPE_4__ {TYPE_1__ sco_cb; } ;
typedef int * BOOLEAN ;


 scalar_t__ BTM_SCO_ROUTE_HCI ;
 scalar_t__ BTM_SCO_ROUTE_PCM ;
 int BTM_SUCCESS ;
 int UNUSED (int *) ;
 TYPE_2__ btm_cb ;

tBTM_STATUS BTM_ConfigScoPath (tBTM_SCO_ROUTE_TYPE path,
                               tBTM_SCO_DATA_CB *p_sco_data_cb,
                               tBTM_SCO_PCM_PARAM *p_pcm_param,
                               BOOLEAN err_data_rpt)
{
    UNUSED(err_data_rpt);
    UNUSED(p_pcm_param);
    btm_cb.sco_cb.sco_path = path;
    if (path == BTM_SCO_ROUTE_PCM) {
        return BTM_SUCCESS;
    } else if (path == BTM_SCO_ROUTE_HCI) {
        if (p_sco_data_cb) {
            btm_cb.sco_cb.p_data_cb = p_sco_data_cb;
        }
    }

    return BTM_SUCCESS;
}
