
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BT_QUEUE_CONGEST_SIZE ;
 int btc_thread ;
 scalar_t__ osi_thread_queue_wait_size (int ,int ) ;

bool btc_check_queue_is_congest(void)
{
    if (osi_thread_queue_wait_size(btc_thread, 0) >= BT_QUEUE_CONGEST_SIZE) {
        return 1;
    }

    return 0;
}
