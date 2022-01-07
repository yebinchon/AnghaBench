
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bt_status_t ;
typedef int bt_bdaddr_t ;


 int BTC_TRACE_EVENT (char*,int ) ;
 int CHECK_HF_CLIENT_INIT () ;
 int UUID_SERVCLASS_HF_HANDSFREE ;
 int btc_hf_client_version ;
 int btc_queue_connect (int ,int *,int ) ;
 int connect_int ;

bt_status_t btc_hf_client_connect( bt_bdaddr_t *bd_addr )
{
    BTC_TRACE_EVENT("HFP Client version is  %s", btc_hf_client_version);
    CHECK_HF_CLIENT_INIT();
    return btc_queue_connect(UUID_SERVCLASS_HF_HANDSFREE, bd_addr, connect_int);

}
