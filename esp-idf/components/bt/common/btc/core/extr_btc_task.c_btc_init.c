
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTC_TASK_PINNED_TO_CORE ;
 int BTC_TASK_PRIO ;
 int BTC_TASK_STACK_SIZE ;
 int BT_STATUS_NOMEM ;
 scalar_t__ BT_STATUS_SUCCESS ;
 int btc_adv_list_init () ;
 int btc_gap_callback_init () ;
 scalar_t__ btc_init_mem () ;
 int * btc_thread ;
 int * osi_thread_create (char*,int ,int ,int ,int) ;

int btc_init(void)
{
    btc_thread = osi_thread_create("BTC_TASK", BTC_TASK_STACK_SIZE, BTC_TASK_PRIO, BTC_TASK_PINNED_TO_CORE, 2);
    if (btc_thread == ((void*)0)) {
        return BT_STATUS_NOMEM;
    }
    btc_gap_callback_init();






    return BT_STATUS_SUCCESS;
}
