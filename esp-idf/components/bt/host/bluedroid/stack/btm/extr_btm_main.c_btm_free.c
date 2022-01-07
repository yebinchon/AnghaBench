
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sec_pending_q; int page_queue; } ;


 int FREE_AND_RESET (int ) ;
 int btm_ble_lock_free () ;
 int btm_ble_sem_free () ;
 TYPE_1__ btm_cb ;
 int btm_cb_ptr ;
 int fixed_queue_free (int ,int ) ;
 int osi_free_func ;

void btm_free(void)
{
    fixed_queue_free(btm_cb.page_queue, osi_free_func);
    fixed_queue_free(btm_cb.sec_pending_q, osi_free_func);




    btm_ble_lock_free();
    btm_ble_sem_free();

}
