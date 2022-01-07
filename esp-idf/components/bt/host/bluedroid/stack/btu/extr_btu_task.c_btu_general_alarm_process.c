
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_13__ ;


typedef int (* tUSER_TIMEOUT_FUNC ) (TYPE_2__*) ;
typedef int tCONN_CB ;
struct TYPE_20__ {int event; scalar_t__ param; } ;
struct TYPE_19__ {int (* timer_cb ) (TYPE_2__*) ;TYPE_2__* p_tle; } ;
struct TYPE_18__ {TYPE_1__* timer_reg; } ;
typedef TYPE_2__ TIMER_LIST_ENT ;
typedef int BOOLEAN ;


 int BTU_MAX_REG_TIMER ;
 int FALSE ;
 int TRUE ;
 int assert (int ) ;
 int avdt_process_timeout (TYPE_2__*) ;
 int bnep_process_timeout (TYPE_2__*) ;
 int btm_ble_timeout (TYPE_2__*) ;
 int btm_dev_timeout (TYPE_2__*) ;
 int btm_inq_rmt_name_failed () ;
 TYPE_13__ btu_cb ;
 int gatt_ind_ack_timeout (TYPE_2__*) ;
 int gatt_rsp_timeout (TYPE_2__*) ;
 int hidh_proc_repage_timeout (TYPE_2__*) ;
 int l2c_process_timeout (TYPE_2__*) ;
 int mca_process_timeout (TYPE_2__*) ;
 int rfcomm_process_timeout (TYPE_2__*) ;
 int sdp_conn_timeout (int *) ;
 int smp_rsp_timeout (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;

__attribute__((used)) static void btu_general_alarm_process(void *param)
{
    TIMER_LIST_ENT *p_tle = (TIMER_LIST_ENT *)param;
    assert(p_tle != ((void*)0));

    switch (p_tle->event) {
    case 142:
        btm_dev_timeout(p_tle);
        break;

    case 135:
    case 139:
    case 137:
    case 136:
    case 138:
    case 134:
        l2c_process_timeout (p_tle);
        break;





    case 141:
        btm_inq_rmt_name_failed();
        break;
    case 133:
        mca_process_timeout(p_tle);
        break;

    case 128: {
        tUSER_TIMEOUT_FUNC *p_uf = (tUSER_TIMEOUT_FUNC *)p_tle->param;
        (*p_uf)(p_tle);
    }
    break;

    default:;
        int i = 0;
        BOOLEAN handled = FALSE;

        for (; !handled && i < BTU_MAX_REG_TIMER; i++) {
            if (btu_cb.timer_reg[i].timer_cb == ((void*)0)) {
                continue;
            }
            if (btu_cb.timer_reg[i].p_tle == p_tle) {
                btu_cb.timer_reg[i].timer_cb(p_tle);
                handled = TRUE;
            }
        }
        break;
    }
}
