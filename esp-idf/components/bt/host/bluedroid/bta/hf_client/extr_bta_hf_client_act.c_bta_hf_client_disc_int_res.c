
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ status; } ;
struct TYPE_7__ {TYPE_1__ disc_result; } ;
typedef TYPE_2__ tBTA_HF_CLIENT_DATA ;
typedef int UINT16 ;


 int APPL_TRACE_DEBUG (char*,scalar_t__) ;
 int BTA_HF_CLIENT_DISC_FAIL_EVT ;
 int BTA_HF_CLIENT_DISC_OK_EVT ;
 scalar_t__ SDP_DB_FULL ;
 scalar_t__ SDP_SUCCESS ;
 int bta_hf_client_free_db (TYPE_2__*) ;
 scalar_t__ bta_hf_client_sdp_find_attr () ;
 int bta_hf_client_sm_execute (int ,TYPE_2__*) ;

void bta_hf_client_disc_int_res(tBTA_HF_CLIENT_DATA *p_data)
{
    UINT16 event = BTA_HF_CLIENT_DISC_FAIL_EVT;

    APPL_TRACE_DEBUG ("bta_hf_client_disc_int_res: Status: %d", p_data->disc_result.status);


    if (p_data->disc_result.status == SDP_SUCCESS ||
            p_data->disc_result.status == SDP_DB_FULL) {

        if (bta_hf_client_sdp_find_attr()) {
            event = BTA_HF_CLIENT_DISC_OK_EVT;
        }
    }


    bta_hf_client_free_db(p_data);


    bta_hf_client_sm_execute(event, p_data);
}
