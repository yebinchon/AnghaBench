
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int status; } ;
typedef TYPE_2__ tL2C_CONN_INFO ;
struct TYPE_16__ {int chnl_state; int timer_entry; TYPE_1__* p_lcb; int fixed_chnl_idle_tout; } ;
typedef TYPE_3__ tL2C_CCB ;
typedef int UINT16 ;
struct TYPE_14__ {int ucd_in_sec_pending_q; int ucd_out_sec_pending_q; } ;
typedef int BOOLEAN ;


 int BTM_DELAY_CHECK ;
 int BTU_TTYPE_L2CAP_CHNL ;




 int FALSE ;
 int FIXED_QUEUE_MAX_TIMEOUT ;
 int TRUE ;
 int btu_start_timer (int *,int ,int ) ;
 int btu_stop_timer (int *) ;
 int fixed_queue_enqueue (int ,void*,int ) ;
 int fixed_queue_is_empty (int ) ;
 int l2c_ucd_check_pending_in_sec_q (TYPE_3__*) ;
 int l2c_ucd_check_pending_info_req (TYPE_3__*) ;
 int l2c_ucd_check_pending_out_sec_q (TYPE_3__*) ;
 int l2c_ucd_discard_pending_in_sec_q (TYPE_3__*) ;
 int l2c_ucd_discard_pending_out_sec_q (TYPE_3__*) ;
 int l2c_ucd_enqueue_pending_out_sec_q (TYPE_3__*,void*) ;
 int l2c_ucd_send_pending_in_sec_q (TYPE_3__*) ;
 int l2c_ucd_send_pending_out_sec_q (TYPE_3__*) ;
 int l2cu_release_ccb (TYPE_3__*) ;

BOOLEAN l2c_ucd_process_event(tL2C_CCB *p_ccb, UINT16 event, void *p_data)
{

    BOOLEAN done = TRUE;

    switch (p_ccb->chnl_state) {
    case 139:
        switch (event) {
        case 132:

            if (!l2c_ucd_check_pending_info_req (p_ccb)) {

                if (!l2c_ucd_check_pending_out_sec_q(p_ccb)) {
                    p_ccb->chnl_state = 138;
                }
            }
            break;

        case 135:
            fixed_queue_enqueue(p_ccb->p_lcb->ucd_in_sec_pending_q, p_data, FIXED_QUEUE_MAX_TIMEOUT);
            break;

        case 133:
            l2c_ucd_enqueue_pending_out_sec_q(p_ccb, p_data);
            break;

        case 134:

            if (!l2c_ucd_check_pending_info_req (p_ccb)) {

                if (!l2c_ucd_check_pending_out_sec_q(p_ccb)) {
                    p_ccb->chnl_state = 138;
                }
            }
            break;

        default:
            done = FALSE;
            break;
        }
        break;

    case 137:
        switch (event) {
        case 129:

            if (!l2c_ucd_check_pending_out_sec_q(p_ccb)) {
                p_ccb->chnl_state = 138;
            }
            break;

        case 131:
            p_ccb->chnl_state = 138;
            l2c_ucd_send_pending_out_sec_q(p_ccb);

            if (! fixed_queue_is_empty(p_ccb->p_lcb->ucd_out_sec_pending_q))
            {


                btu_start_timer (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, 0);
            } else {

                btu_start_timer (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, p_ccb->fixed_chnl_idle_tout);
            }
            break;

        case 130:
            p_ccb->chnl_state = 138;
            l2c_ucd_discard_pending_out_sec_q(p_ccb);


            btu_start_timer (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, p_ccb->fixed_chnl_idle_tout);
            break;

        case 133:
            l2c_ucd_enqueue_pending_out_sec_q(p_ccb, p_data);
            break;

        case 135:
            fixed_queue_enqueue(p_ccb->p_lcb->ucd_in_sec_pending_q, p_data, FIXED_QUEUE_MAX_TIMEOUT);
            break;

        case 134:

            l2c_ucd_check_pending_info_req (p_ccb);
            break;

        default:
            done = FALSE;
            break;
        }
        break;


    case 136:
        switch (event) {
        case 131:
            p_ccb->chnl_state = 138;
            l2c_ucd_send_pending_in_sec_q (p_ccb);

            if (! fixed_queue_is_empty(p_ccb->p_lcb->ucd_in_sec_pending_q)) {


                btu_start_timer (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, 0);
            } else {

                btu_start_timer (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, p_ccb->fixed_chnl_idle_tout);
            }
            break;

        case 130:
            if (((tL2C_CONN_INFO *)p_data)->status == BTM_DELAY_CHECK) {
                done = FALSE;
                break;
            }
            p_ccb->chnl_state = 138;
            l2c_ucd_discard_pending_in_sec_q (p_ccb);


            btu_start_timer (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, p_ccb->fixed_chnl_idle_tout);
            break;

        case 133:
            l2c_ucd_enqueue_pending_out_sec_q(p_ccb, p_data);
            break;

        case 135:
            fixed_queue_enqueue(p_ccb->p_lcb->ucd_in_sec_pending_q, p_data, FIXED_QUEUE_MAX_TIMEOUT);
            break;

        case 129:

            if (!l2c_ucd_check_pending_in_sec_q(p_ccb)) {
                p_ccb->chnl_state = 138;
            }
            break;

        case 134:

            l2c_ucd_check_pending_info_req (p_ccb);
            break;

        default:
            done = FALSE;
            break;
        }
        break;

    case 138:
        switch (event) {
        case 135:

            btu_stop_timer (&p_ccb->timer_entry);

            fixed_queue_enqueue(p_ccb->p_lcb->ucd_in_sec_pending_q, p_data, FIXED_QUEUE_MAX_TIMEOUT);
            l2c_ucd_check_pending_in_sec_q (p_ccb);
            break;

        case 133:

            btu_stop_timer (&p_ccb->timer_entry);

            l2c_ucd_enqueue_pending_out_sec_q(p_ccb, p_data);



            l2c_ucd_check_pending_out_sec_q (p_ccb);
            break;

        case 128:

            if ((!l2c_ucd_check_pending_in_sec_q(p_ccb))
                    && (!l2c_ucd_check_pending_out_sec_q(p_ccb))) {
                l2cu_release_ccb (p_ccb);
            }
            break;

        case 134:

            l2c_ucd_check_pending_info_req (p_ccb);
            break;

        default:
            done = FALSE;
            break;
        }
        break;

    default:
        done = FALSE;
        break;
    }

    return done;
}
