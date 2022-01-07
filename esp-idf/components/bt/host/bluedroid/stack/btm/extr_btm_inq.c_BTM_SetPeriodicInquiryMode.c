
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tBTM_STATUS ;
typedef int tBTM_INQ_RESULTS_CB ;
struct TYPE_7__ {scalar_t__ mode; scalar_t__ duration; scalar_t__ filter_cond_type; int filter_cond; int max_resps; } ;
typedef TYPE_2__ tBTM_INQ_PARMS ;
struct TYPE_6__ {scalar_t__ num_resp; } ;
struct TYPE_8__ {int state; int * p_inq_results_cb; scalar_t__ inq_active; TYPE_1__ inq_cmpl_info; scalar_t__ per_max_delay; scalar_t__ per_min_delay; TYPE_2__ inqparms; scalar_t__ inqfilt_active; } ;
typedef TYPE_3__ tBTM_INQUIRY_VAR_ST ;
typedef scalar_t__ UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_9__ {TYPE_3__ btm_inq_vars; } ;


 int BTM_BUSY ;
 scalar_t__ BTM_CLR_INQUIRY_FILTER ;
 int BTM_CMD_STARTED ;
 scalar_t__ BTM_GENERAL_INQUIRY ;
 int BTM_GENERAL_INQUIRY_ACTIVE ;
 int BTM_ILLEGAL_VALUE ;
 int BTM_INQ_CLR_FILT_STATE ;
 int BTM_INQ_INACTIVE_STATE ;
 int BTM_INQ_SET_FILT_STATE ;
 int BTM_IsDeviceUp () ;
 scalar_t__ BTM_LIMITED_INQUIRY ;
 int BTM_LIMITED_INQUIRY_ACTIVE ;
 scalar_t__ BTM_MAX_INQUIRY_LENGTH ;
 scalar_t__ BTM_MIN_INQUIRY_LEN ;
 int BTM_PERIODIC_INQUIRY_ACTIVE ;
 scalar_t__ BTM_PER_INQ_MAX_MIN_PERIOD ;
 scalar_t__ BTM_PER_INQ_MIN_MAX_PERIOD ;
 scalar_t__ BTM_PER_INQ_MIN_MIN_PERIOD ;
 int BTM_TRACE_API (char*,scalar_t__,scalar_t__,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int BTM_WRONG_MODE ;
 TYPE_4__ btm_cb ;
 int btm_set_inq_event_filter (scalar_t__,int *) ;

tBTM_STATUS BTM_SetPeriodicInquiryMode (tBTM_INQ_PARMS *p_inqparms, UINT16 max_delay,
                                        UINT16 min_delay, tBTM_INQ_RESULTS_CB *p_results_cb)
{
    tBTM_STATUS status;
    tBTM_INQUIRY_VAR_ST *p_inq = &btm_cb.btm_inq_vars;

    BTM_TRACE_API ("BTM_SetPeriodicInquiryMode: mode: %d, dur: %d, rsps: %d, flt: %d, min: %d, max: %d\n",
                   p_inqparms->mode, p_inqparms->duration, p_inqparms->max_resps,
                   p_inqparms->filter_cond_type, min_delay, max_delay);


    if (!BTM_IsDeviceUp()) {
        return (BTM_WRONG_MODE);
    }



    if (p_inq->inq_active || p_inq->inqfilt_active) {
        return (BTM_BUSY);
    }


    if (p_inqparms->mode != BTM_GENERAL_INQUIRY &&
            p_inqparms->mode != BTM_LIMITED_INQUIRY) {
        return (BTM_ILLEGAL_VALUE);
    }


    if (p_inqparms->duration < BTM_MIN_INQUIRY_LEN ||
            p_inqparms->duration > BTM_MAX_INQUIRY_LENGTH ||
            min_delay <= p_inqparms->duration ||
            min_delay < BTM_PER_INQ_MIN_MIN_PERIOD ||
            min_delay > BTM_PER_INQ_MAX_MIN_PERIOD ||
            max_delay <= min_delay ||
            max_delay < BTM_PER_INQ_MIN_MAX_PERIOD)


    {
        return (BTM_ILLEGAL_VALUE);
    }


    p_inq->inqparms = *p_inqparms;
    p_inq->per_min_delay = min_delay;
    p_inq->per_max_delay = max_delay;
    p_inq->inq_cmpl_info.num_resp = 0;
    p_inq->p_inq_results_cb = p_results_cb;

    p_inq->inq_active = (UINT8)((p_inqparms->mode == BTM_LIMITED_INQUIRY) ?
                                (BTM_LIMITED_INQUIRY_ACTIVE | BTM_PERIODIC_INQUIRY_ACTIVE) :
                                (BTM_GENERAL_INQUIRY_ACTIVE | BTM_PERIODIC_INQUIRY_ACTIVE));





    if (p_inqparms->filter_cond_type != BTM_CLR_INQUIRY_FILTER) {
        p_inq->state = BTM_INQ_CLR_FILT_STATE;
        p_inqparms->filter_cond_type = BTM_CLR_INQUIRY_FILTER;
    } else {
        p_inq->state = BTM_INQ_SET_FILT_STATE;
    }


    if ((status = btm_set_inq_event_filter (p_inqparms->filter_cond_type, &p_inqparms->filter_cond)) != BTM_CMD_STARTED) {

        p_inq->p_inq_results_cb = ((void*)0);
        p_inq->state = BTM_INQ_INACTIVE_STATE;

    }

    return (status);
}
