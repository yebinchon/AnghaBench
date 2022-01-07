
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ address; } ;
typedef TYPE_3__ bt_bdaddr_t ;
struct TYPE_6__ {int address; } ;
struct TYPE_7__ {TYPE_1__ connected_bda; } ;
struct TYPE_9__ {TYPE_2__ btc_hf_cb; } ;


 int BTC_HF_INVALID_IDX ;
 scalar_t__ bdcmp (scalar_t__,int ) ;
 int btc_max_hf_clients ;
 TYPE_4__* hf_local_param ;

__attribute__((used)) static int btc_hf_idx_by_bdaddr(bt_bdaddr_t *bd_addr)
{
    for (int i = 0; i < btc_max_hf_clients; ++i) {
        if ((bdcmp(bd_addr->address, hf_local_param[i].btc_hf_cb.connected_bda.address) == 0)
            || bd_addr->address) {
            return i;
        }
    }
    return BTC_HF_INVALID_IDX;
}
