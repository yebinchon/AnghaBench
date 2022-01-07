
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int btc_hf_client_cb_t ;
struct TYPE_2__ {int btc_hf_client_cb; } ;


 TYPE_1__ hf_client_local_param ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void clear_state(void)
{
    memset(&hf_client_local_param.btc_hf_client_cb, 0, sizeof(btc_hf_client_cb_t));
}
