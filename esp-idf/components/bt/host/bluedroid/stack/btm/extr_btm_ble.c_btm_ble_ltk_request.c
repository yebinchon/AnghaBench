
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int bd_addr; } ;
typedef TYPE_1__ tBTM_SEC_DEV_REC ;
struct TYPE_8__ {int enc_rand; int ediv; } ;
typedef TYPE_2__ tBTM_CB ;
typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_9__ {int member_0; } ;
typedef TYPE_3__ BT_OCTET8 ;


 int BTM_TRACE_DEBUG (char*) ;
 int BT_OCTET8_LEN ;
 int FALSE ;
 int btm_ble_ltk_request_reply (int ,int ,TYPE_3__) ;
 TYPE_2__ btm_cb ;
 TYPE_1__* btm_find_dev_by_handle (int ) ;
 int memcpy (int ,int *,int ) ;
 int smp_proc_ltk_request (int ) ;

void btm_ble_ltk_request(UINT16 handle, UINT8 rand[8], UINT16 ediv)
{
    tBTM_CB *p_cb = &btm_cb;
    tBTM_SEC_DEV_REC *p_dev_rec = btm_find_dev_by_handle (handle);
    BT_OCTET8 dummy_stk = {0};

    BTM_TRACE_DEBUG ("btm_ble_ltk_request");

    p_cb->ediv = ediv;

    memcpy(p_cb->enc_rand, rand, BT_OCTET8_LEN);

    if (p_dev_rec != ((void*)0)) {
        if (!smp_proc_ltk_request(p_dev_rec->bd_addr)) {
            btm_ble_ltk_request_reply(p_dev_rec->bd_addr, FALSE, dummy_stk);
        }
    }

}
