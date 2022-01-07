
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bt_status_t ;
typedef int bt_bdaddr_t ;


 int UUID_SERVCLASS_AG_HANDSFREE ;
 int btc_queue_connect (int ,int *,int ) ;
 int connect_init ;

bt_status_t btc_hf_connect(bt_bdaddr_t *bd_addr)
{
    return btc_queue_connect(UUID_SERVCLASS_AG_HANDSFREE, bd_addr, connect_init);
}
