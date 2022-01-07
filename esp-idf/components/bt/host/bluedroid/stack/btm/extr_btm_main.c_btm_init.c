
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_CB ;
struct TYPE_3__ {int trace_level; void* sec_pending_q; void* page_queue; } ;


 int BTM_INITIAL_TRACE_LEVEL ;
 int BTM_SEC_MODE_SP ;
 int BT_TRACE_LEVEL_NONE ;
 int QUEUE_SIZE_MAX ;
 int btm_acl_init () ;
 int btm_ble_lock_init () ;
 int btm_ble_sem_init () ;
 TYPE_1__ btm_cb ;
 int * btm_cb_ptr ;
 int btm_dev_init () ;
 int btm_inq_db_init () ;
 int btm_sco_init () ;
 int btm_sec_init (int ) ;
 void* fixed_queue_new (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ osi_malloc (int) ;

void btm_init (void)
{




    memset(&btm_cb, 0, sizeof(tBTM_CB));
    btm_cb.page_queue = fixed_queue_new(QUEUE_SIZE_MAX);
    btm_cb.sec_pending_q = fixed_queue_new(QUEUE_SIZE_MAX);




    btm_cb.trace_level = BT_TRACE_LEVEL_NONE;


    btm_inq_db_init();
    btm_acl_init();

    btm_sec_init(BTM_SEC_MODE_SP);


    btm_sco_init();


    btm_dev_init();

    btm_ble_lock_init();
    btm_ble_sem_init();

}
