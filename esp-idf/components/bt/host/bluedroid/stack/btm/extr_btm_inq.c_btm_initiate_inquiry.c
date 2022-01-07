
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tINQ_BDADDR ;
struct TYPE_7__ {int mode; scalar_t__ max_resps; int duration; } ;
typedef TYPE_2__ tBTM_INQ_PARMS ;
struct TYPE_8__ {int inq_active; scalar_t__ max_bd_entries; int * p_bd_db; int per_min_delay; int per_max_delay; TYPE_2__ inqparms; } ;
typedef TYPE_3__ tBTM_INQUIRY_VAR_ST ;
typedef scalar_t__ UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_6__ {int inqfilt_active; int state; int inq_active; } ;
struct TYPE_9__ {TYPE_1__ btm_inq_vars; } ;
typedef int LAP ;


 int BTM_BLI_INQ_EVT ;
 int BTM_BR_INQUIRY_MASK ;
 scalar_t__ BTM_INQ_DB_SIZE ;
 int BTM_LIMITED_INQUIRY_ACTIVE ;
 int BTM_NO_RESOURCES ;
 int BTM_PERIODIC_INQUIRY_ACTIVE ;
 int BTM_SSP_INQUIRY_ACTIVE ;
 int BTM_TRACE_DEBUG (char*,int ,int ,int ) ;
 int BT_DEFAULT_BUFFER_SIZE ;
 int btm_acl_update_busy_level (int ) ;
 TYPE_5__ btm_cb ;
 int btm_clr_inq_result_flt () ;
 int btm_process_inq_complete (int ,scalar_t__) ;
 int btsnd_hcic_inquiry (int const,int ,int ) ;
 int btsnd_hcic_per_inq_mode (int ,int ,int const,int ,scalar_t__) ;
 int general_inq_lap ;
 int limited_inq_lap ;
 scalar_t__ osi_calloc (int) ;

__attribute__((used)) static void btm_initiate_inquiry (tBTM_INQUIRY_VAR_ST *p_inq)
{
    const LAP *lap;
    tBTM_INQ_PARMS *p_inqparms = &p_inq->inqparms;


    BTM_TRACE_DEBUG ("btm_initiate_inquiry: inq_active:0x%x state:%d inqfilt_active:%d\n",
                     btm_cb.btm_inq_vars.inq_active, btm_cb.btm_inq_vars.state, btm_cb.btm_inq_vars.inqfilt_active);

    btm_acl_update_busy_level (BTM_BLI_INQ_EVT);

    if (p_inq->inq_active & BTM_SSP_INQUIRY_ACTIVE) {
        btm_process_inq_complete (BTM_NO_RESOURCES, (UINT8)(p_inqparms->mode & BTM_BR_INQUIRY_MASK));
        return;
    }


    p_inqparms->max_resps = (UINT8)((p_inqparms->max_resps <= BTM_INQ_DB_SIZE) ? p_inqparms->max_resps : BTM_INQ_DB_SIZE);

    lap = (p_inq->inq_active & BTM_LIMITED_INQUIRY_ACTIVE) ? &limited_inq_lap : &general_inq_lap;

    if (p_inq->inq_active & BTM_PERIODIC_INQUIRY_ACTIVE) {
        if (!btsnd_hcic_per_inq_mode (p_inq->per_max_delay,
                                      p_inq->per_min_delay,
                                      *lap, p_inqparms->duration,
                                      p_inqparms->max_resps)) {
            btm_process_inq_complete (BTM_NO_RESOURCES, (UINT8)(p_inqparms->mode & BTM_BR_INQUIRY_MASK));
        }
    } else {
        btm_clr_inq_result_flt();


        if ((p_inq->p_bd_db = (tINQ_BDADDR *)osi_calloc(BT_DEFAULT_BUFFER_SIZE)) != ((void*)0)) {
            p_inq->max_bd_entries = (UINT16)(BT_DEFAULT_BUFFER_SIZE / sizeof(tINQ_BDADDR));


        }

        if (!btsnd_hcic_inquiry(*lap, p_inqparms->duration, 0)) {
            btm_process_inq_complete (BTM_NO_RESOURCES, (UINT8)(p_inqparms->mode & BTM_BR_INQUIRY_MASK));
        }
    }
}
