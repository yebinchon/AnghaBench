
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ tBTM_STATUS ;
typedef int tBTM_INQ_RESULTS_CB ;
struct TYPE_12__ {int mode; int filter_cond_type; int filter_cond; int duration; int * intl_duration; int max_resps; } ;
typedef TYPE_4__ tBTM_INQ_PARMS ;
struct TYPE_11__ {scalar_t__ num_resp; } ;
struct TYPE_13__ {int inq_active; scalar_t__ scan_type; void* next_state; int state; TYPE_4__ inqparms; TYPE_3__ inq_cmpl_info; int * p_inq_results_cb; int * p_inq_cmpl_cb; int * p_inq_ble_results_cb; scalar_t__ inqfilt_active; } ;
typedef TYPE_5__ tBTM_INQUIRY_VAR_ST ;
typedef int tBTM_CMPL_CB ;
typedef int UINT8 ;
struct TYPE_9__ {int scan_type; } ;
struct TYPE_10__ {TYPE_1__ inq_var; } ;
struct TYPE_15__ {TYPE_2__ ble_ctr_cb; TYPE_5__ btm_inq_vars; } ;
struct TYPE_14__ {int (* supports_ble ) () ;} ;


 int BTM_BLE_DUPLICATE_ENABLE ;
 int BTM_BLE_GENERAL_INQUIRY ;
 int BTM_BLE_INQUIRY_MASK ;
 int BTM_BLE_LIMITED_INQUIRY ;
 size_t BTM_BLE_ONE ;
 int BTM_BLE_SCAN_DISABLE ;
 int BTM_BLE_SCAN_MODE_NONE ;
 size_t BTM_BLE_TWO ;
 int BTM_BR_INQUIRY_MASK ;
 void* BTM_BR_ONE ;
 void* BTM_BR_TWO ;
 scalar_t__ BTM_BUSY ;

 scalar_t__ BTM_CMD_STARTED ;


 void* BTM_FINISH ;
 int BTM_GENERAL_INQUIRY ;
 scalar_t__ BTM_ILLEGAL_VALUE ;
 int BTM_INQUIRY_INACTIVE ;
 int BTM_INQUIRY_NONE ;
 int BTM_INQ_ACTIVE_STATE ;
 int BTM_INQ_CLR_FILT_STATE ;
 int BTM_INQ_INACTIVE_STATE ;
 int BTM_INQ_SET_FILT_STATE ;
 int BTM_IsDeviceUp () ;
 int BTM_LIMITED_INQUIRY ;
 size_t BTM_NO_INTERLEAVING ;
 int BTM_TRACE_API (char*,...) ;
 int BTM_TRACE_DEBUG (char*,int) ;
 int BTM_TRACE_ERROR (char*) ;
 scalar_t__ BTM_WRONG_MODE ;
 void* INQ_GENERAL ;
 scalar_t__ INQ_LE_OBSERVE ;
 scalar_t__ btm_ble_start_inquiry (int ,int ) ;
 TYPE_7__ btm_cb ;
 scalar_t__ btm_set_inq_event_filter (int,int *) ;
 int btsnd_hcic_ble_set_scan_enable (int ,int ) ;
 TYPE_6__* controller_get_interface () ;
 int stub1 () ;

tBTM_STATUS BTM_StartInquiry (tBTM_INQ_PARMS *p_inqparms, tBTM_INQ_RESULTS_CB *p_results_cb,
                              tBTM_CMPL_CB *p_cmpl_cb)
{
    tBTM_STATUS status = BTM_CMD_STARTED;
    tBTM_INQUIRY_VAR_ST *p_inq = &btm_cb.btm_inq_vars;

    BTM_TRACE_API ("BTM_StartInquiry: mode: %d, dur: %d, rsps: %d, flt: %d\n",
                   p_inqparms->mode, p_inqparms->duration, p_inqparms->max_resps,
                   p_inqparms->filter_cond_type);



    if (p_inq->inq_active || p_inq->inqfilt_active) {
        {
            return (BTM_BUSY);
            BTM_TRACE_API("BTM_StartInquiry: return BUSY\n");
        }
    } else {
        p_inq->scan_type = INQ_GENERAL;
    }


    if (!BTM_IsDeviceUp()) {
        return (BTM_WRONG_MODE);
    }

    if ((p_inqparms->mode & BTM_BR_INQUIRY_MASK) != BTM_GENERAL_INQUIRY &&
            (p_inqparms->mode & BTM_BR_INQUIRY_MASK) != BTM_LIMITED_INQUIRY

            && (p_inqparms->mode & BTM_BLE_INQUIRY_MASK) != BTM_BLE_GENERAL_INQUIRY
            && (p_inqparms->mode & BTM_BLE_INQUIRY_MASK) != BTM_BLE_LIMITED_INQUIRY

       ) {
        return (BTM_ILLEGAL_VALUE);
    }
    p_inq->inqparms = *p_inqparms;


    p_inq->state = BTM_INQ_ACTIVE_STATE;
    p_inq->p_inq_cmpl_cb = p_cmpl_cb;
    p_inq->p_inq_results_cb = p_results_cb;
    p_inq->inq_cmpl_info.num_resp = 0;
    p_inq->inq_active = p_inqparms->mode;

    BTM_TRACE_DEBUG("BTM_StartInquiry: p_inq->inq_active = 0x%02x\n", p_inq->inq_active);
    if ((p_inqparms->mode & BTM_BLE_INQUIRY_MASK)




       )

    {





        if (!controller_get_interface()->supports_ble()) {
            p_inq->inqparms.mode &= ~ BTM_BLE_INQUIRY_MASK;
            status = BTM_ILLEGAL_VALUE;
        }

        else if ((status = btm_ble_start_inquiry((UINT8)(p_inqparms->mode & BTM_BLE_INQUIRY_MASK),
                           p_inqparms->duration)) != BTM_CMD_STARTED) {
            BTM_TRACE_ERROR("Err Starting LE Inquiry.\n");
            p_inq->inqparms.mode &= ~ BTM_BLE_INQUIRY_MASK;
        }

        p_inqparms->mode &= ~BTM_BLE_INQUIRY_MASK;
        BTM_TRACE_DEBUG("BTM_StartInquiry: mode = %02x\n", p_inqparms->mode);
    }



    if ((p_inqparms->mode & BTM_BR_INQUIRY_MASK) == BTM_INQUIRY_NONE) {
        return status;
    }
        switch (p_inqparms->filter_cond_type) {
        case 130:
            p_inq->state = BTM_INQ_SET_FILT_STATE;
            break;

        case 128:
        case 129:


            p_inq->state = BTM_INQ_CLR_FILT_STATE;
            p_inqparms->filter_cond_type = 130;

            break;

        default:
            return (BTM_ILLEGAL_VALUE);
        }


        if ((status = btm_set_inq_event_filter (p_inqparms->filter_cond_type,
                                                &p_inqparms->filter_cond)) != BTM_CMD_STARTED) {
            p_inq->state = BTM_INQ_INACTIVE_STATE;
        }
    return (status);
}
