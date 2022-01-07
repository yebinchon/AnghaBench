
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


typedef int uint16_t ;
struct TYPE_15__ {int (* callback ) (TYPE_3__*) ;} ;
typedef TYPE_2__ post_to_task_hack_t ;
typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_16__ {int event; int * data; } ;
struct TYPE_14__ {int (* event_cb ) (TYPE_3__*) ;int event_range; } ;
struct TYPE_13__ {TYPE_1__* event_reg; } ;
typedef TYPE_3__ BT_HDR ;
typedef int BOOLEAN ;


 int BTU_MAX_REG_EVENT ;

 int BT_EVT_MASK ;





 int BT_SUB_EVT_MASK ;
 int FALSE ;
 int TRUE ;
 int btm_route_sco_data (TYPE_3__*) ;
 TYPE_11__ btu_cb ;
 int btu_check_bt_sleep () ;
 int btu_hcif_process_event (int ,TYPE_3__*) ;
 int btu_hcif_send_cmd (int ,TYPE_3__*) ;
 int l2c_link_segments_xmitted (TYPE_3__*) ;
 int l2c_rcv_acl_data (TYPE_3__*) ;
 int osi_free (TYPE_3__*) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;

__attribute__((used)) static void btu_hci_msg_process(void *param)
{

    BT_HDR *p_msg = (BT_HDR *)param;

    switch (p_msg->event & BT_EVT_MASK) {
    case 133:
      {
        post_to_task_hack_t *ph = (post_to_task_hack_t *) &p_msg->data[0];
        ph->callback(p_msg);
        break;
      }
    case 132:

        l2c_rcv_acl_data (p_msg);
        break;

    case 128:

        l2c_link_segments_xmitted (p_msg);
        break;

    case 129:

        btm_route_sco_data (p_msg);
        osi_free(p_msg);
        break;


    case 130:
        btu_hcif_process_event ((UINT8)(p_msg->event & BT_SUB_EVT_MASK), p_msg);
        osi_free(p_msg);






        break;

    case 131:
        btu_hcif_send_cmd ((UINT8)(p_msg->event & BT_SUB_EVT_MASK), p_msg);
        break;

    default:;
        int i = 0;
        uint16_t mask = (UINT16) (p_msg->event & BT_EVT_MASK);
        BOOLEAN handled = FALSE;

        for (; !handled && i < BTU_MAX_REG_EVENT; i++) {
            if (btu_cb.event_reg[i].event_cb == ((void*)0)) {
                continue;
            }

            if (mask == btu_cb.event_reg[i].event_range) {
                if (btu_cb.event_reg[i].event_cb) {
                    btu_cb.event_reg[i].event_cb(p_msg);
                    handled = TRUE;
                }
            }
        }

        if (handled == FALSE) {
            osi_free (p_msg);
        }

        break;
    }

}
