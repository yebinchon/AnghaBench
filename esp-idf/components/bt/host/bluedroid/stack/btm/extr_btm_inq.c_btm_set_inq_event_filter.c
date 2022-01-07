
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_6__ {int dev_class_mask; int dev_class; } ;
struct TYPE_8__ {int* bdaddr_cond; TYPE_1__ cod_cond; } ;
typedef TYPE_3__ tBTM_INQ_FILT_COND ;
typedef int UINT8 ;
struct TYPE_7__ {int inqfilt_active; } ;
struct TYPE_9__ {TYPE_2__ btm_inq_vars; } ;



 int BTM_CMD_STARTED ;


 int BTM_ILLEGAL_VALUE ;
 int BTM_NO_RESOURCES ;
 int BTM_TRACE_DEBUG (char*,int,...) ;
 int DEV_CLASS_LEN ;
 int HCI_FILTER_INQUIRY_RESULT ;
 int TRUE ;
 TYPE_5__ btm_cb ;
 scalar_t__ btsnd_hcic_set_event_filter (int ,int,int*,int) ;
 int memcpy (int*,int ,int) ;

__attribute__((used)) static tBTM_STATUS btm_set_inq_event_filter (UINT8 filter_cond_type,
        tBTM_INQ_FILT_COND *p_filt_cond)
{
    UINT8 condition_length = DEV_CLASS_LEN * 2;
    UINT8 condition_buf[DEV_CLASS_LEN * 2];
    UINT8 *p_cond = condition_buf;


    BTM_TRACE_DEBUG ("btm_set_inq_event_filter: filter type %d [Clear-0, COD-1, BDADDR-2]\n",
                     filter_cond_type);
    BTM_TRACE_DEBUG ("                       condition [%02x%02x%02x %02x%02x%02x]\n",
                     p_filt_cond->bdaddr_cond[0], p_filt_cond->bdaddr_cond[1], p_filt_cond->bdaddr_cond[2],
                     p_filt_cond->bdaddr_cond[3], p_filt_cond->bdaddr_cond[4], p_filt_cond->bdaddr_cond[5]);



    switch (filter_cond_type) {
    case 128:

        memcpy (condition_buf, p_filt_cond->cod_cond.dev_class, DEV_CLASS_LEN);
        memcpy (&condition_buf[DEV_CLASS_LEN],
                p_filt_cond->cod_cond.dev_class_mask, DEV_CLASS_LEN);


        break;

    case 129:
        p_cond = p_filt_cond->bdaddr_cond;


        break;

    case 130:
        condition_length = 0;
        break;

    default:
        return (BTM_ILLEGAL_VALUE);
    }

    btm_cb.btm_inq_vars.inqfilt_active = TRUE;


    if (btsnd_hcic_set_event_filter(HCI_FILTER_INQUIRY_RESULT, filter_cond_type,
                                    p_cond, condition_length))

    {
        return (BTM_CMD_STARTED);
    } else {
        return (BTM_NO_RESOURCES);
    }
}
