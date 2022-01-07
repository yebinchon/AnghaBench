
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int btc_msg_t ;
typedef int bt_status_t ;


 int BT_STATUS_BUSY ;
 int BT_STATUS_NOMEM ;
 int BT_STATUS_SUCCESS ;
 int btc_thread ;
 int btc_thread_handler ;
 int memcpy (int *,int *,int) ;
 scalar_t__ osi_malloc (int) ;
 int osi_thread_post (int ,int ,int *,int ,int ) ;

__attribute__((used)) static bt_status_t btc_task_post(btc_msg_t *msg, uint32_t timeout)
{
    btc_msg_t *lmsg;

    lmsg = (btc_msg_t *)osi_malloc(sizeof(btc_msg_t));
    if (lmsg == ((void*)0)) {
        return BT_STATUS_NOMEM;
    }

    memcpy(lmsg, msg, sizeof(btc_msg_t));

    if (osi_thread_post(btc_thread, btc_thread_handler, lmsg, 0, timeout) == 0) {
        return BT_STATUS_BUSY;
    }

    return BT_STATUS_SUCCESS;
}
