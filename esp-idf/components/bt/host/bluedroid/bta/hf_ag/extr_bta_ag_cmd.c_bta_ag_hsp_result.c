
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {int features; size_t inband_enabled; int peer_addr; int app_id; int act_timer; int post_sco; int hsp_version; } ;
typedef TYPE_2__ tBTA_AG_SCB ;
typedef int tBTA_AG_DATA ;
struct TYPE_16__ {size_t state; int ok_flag; int * str; int audio_handle; int num; } ;
struct TYPE_18__ {size_t result; TYPE_1__ data; } ;
typedef TYPE_3__ tBTA_AG_API_RESULT ;
typedef int UINT8 ;


 int APPL_TRACE_DEBUG (char*,size_t) ;

 int BTA_AG_ERR_INV_CHAR_IN_TSTR ;
 int BTA_AG_FEAT_NOSCO ;
 int BTA_AG_HANDLE_NONE ;




 int BTA_AG_OK_DONE ;
 int BTA_AG_OK_ERROR ;

 int BTA_AG_POST_SCO_NONE ;
 int BTA_AG_POST_SCO_RING ;


 int BTA_ID_AG ;
 int HSP_VERSION_1_2 ;
 int bta_ag_inband_enabled (TYPE_2__*) ;
 int bta_ag_scb_to_idx (TYPE_2__*) ;
 int bta_ag_sco_close (TYPE_2__*,int *) ;
 int bta_ag_sco_is_open (TYPE_2__*) ;
 int bta_ag_sco_is_opening (TYPE_2__*) ;
 int bta_ag_sco_open (TYPE_2__*,int *) ;
 int bta_ag_send_error (TYPE_2__*,int ) ;
 int bta_ag_send_ok (TYPE_2__*) ;
 int bta_ag_send_result (TYPE_2__*,int ,int *,int ) ;
 int bta_ag_send_ring (TYPE_2__*,int *) ;
 int * bta_ag_trans_result ;
 int bta_sys_sco_unuse (int ,int ,int ) ;
 int bta_sys_sco_use (int ,int ,int ) ;
 int bta_sys_stop_timer (int *) ;

void bta_ag_hsp_result(tBTA_AG_SCB *p_scb, tBTA_AG_API_RESULT *p_result)
{
    UINT8 code = bta_ag_trans_result[p_result->result];

    APPL_TRACE_DEBUG("bta_ag_hsp_result : res = %d", p_result->result);

    switch(p_result->result) {
        case 129:
        case 131:
            bta_ag_send_result(p_scb, code, ((void*)0), p_result->data.num);
            break;

        case 132:
        {

            bta_sys_sco_use(BTA_ID_AG, p_scb->app_id, p_scb->peer_addr);

            if (bta_ag_sco_is_open(p_scb) || !bta_ag_inband_enabled(p_scb) ||
                (p_scb->features & BTA_AG_FEAT_NOSCO)) {
                bta_ag_send_ring(p_scb, (tBTA_AG_DATA *) p_result);
            } else {


                if (p_scb->hsp_version >= HSP_VERSION_1_2) {
                    p_scb->post_sco = BTA_AG_POST_SCO_NONE;
                } else {
                    p_scb->post_sco = BTA_AG_POST_SCO_RING;
                }
                bta_ag_sco_open(p_scb, (tBTA_AG_DATA *) p_result);
            }
            break;
        }

        case 133:
        case 130:
        {

            if (p_result->result == 133) {
                bta_sys_stop_timer(&p_scb->act_timer);
            }

            if (!(p_scb->features & BTA_AG_FEAT_NOSCO)) {

                if (p_result->data.audio_handle == bta_ag_scb_to_idx(p_scb)) {
                    bta_ag_sco_open(p_scb, (tBTA_AG_DATA *) p_result);
                } else if (p_result->data.audio_handle == BTA_AG_HANDLE_NONE) {

                    bta_ag_sco_close(p_scb, (tBTA_AG_DATA *) p_result);
                }
            }
            break;
        }

        case 135:
        {

            bta_sys_stop_timer(&p_scb->act_timer);

            if ((bta_ag_sco_is_open(p_scb) || bta_ag_sco_is_opening(p_scb)) && !(p_scb->features & BTA_AG_FEAT_NOSCO)) {
                bta_ag_sco_close(p_scb, (tBTA_AG_DATA *) p_result);
            } else {

                bta_sys_sco_unuse(BTA_ID_AG, p_scb->app_id, p_scb->peer_addr);
            }
            break;
        }

        case 134:
            p_scb->inband_enabled = p_result->data.state;
            APPL_TRACE_DEBUG("inband_enabled set to %d", p_scb->inband_enabled);
            break;

        case 128:
        {
            if (p_result->data.ok_flag != BTA_AG_OK_ERROR) {
                if (p_result->data.str[0] != 0) {
                    bta_ag_send_result(p_scb, code, p_result->data.str, 0);
                }
                if (p_result->data.ok_flag == BTA_AG_OK_DONE) {
                    bta_ag_send_ok(p_scb);
                }
            } else {
                bta_ag_send_error(p_scb, BTA_AG_ERR_INV_CHAR_IN_TSTR);
            }
            break;
        }
        default:
            break;
    }
}
