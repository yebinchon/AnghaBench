
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dev_class; int bd_addr; } ;
typedef TYPE_1__ tBTM_SEC_DEV_REC ;
typedef int UINT8 ;
struct TYPE_8__ {int paging; int connecting_dc; int connecting_bda; int page_queue; } ;
struct TYPE_7__ {int offset; } ;
typedef TYPE_2__ BT_HDR ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int BTM_TRACE_DEBUG (char*) ;
 int DEV_CLASS_LEN ;
 int FALSE ;
 int LOCAL_BR_EDR_CONTROLLER_ID ;
 int STREAM_TO_BDADDR (int ,int *) ;
 TYPE_5__ btm_cb ;
 TYPE_1__* btm_find_or_alloc_dev (int ) ;
 int btu_hcif_send_cmd (int ,TYPE_2__*) ;
 scalar_t__ fixed_queue_dequeue (int ,int ) ;
 int memcpy (int ,int ,int ) ;

void btm_acl_resubmit_page (void)
{

    tBTM_SEC_DEV_REC *p_dev_rec;
    BT_HDR *p_buf;
    UINT8 *pp;
    BD_ADDR bda;
    BTM_TRACE_DEBUG ("btm_acl_resubmit_page\n");

    if ((p_buf = (BT_HDR *)fixed_queue_dequeue(btm_cb.page_queue, 0)) != ((void*)0)) {


        pp = (UINT8 *)(p_buf + 1) + p_buf->offset + 3;

        STREAM_TO_BDADDR (bda, pp);

        p_dev_rec = btm_find_or_alloc_dev (bda);

        memcpy (btm_cb.connecting_bda, p_dev_rec->bd_addr, BD_ADDR_LEN);
        memcpy (btm_cb.connecting_dc, p_dev_rec->dev_class, DEV_CLASS_LEN);

        btu_hcif_send_cmd (LOCAL_BR_EDR_CONTROLLER_ID, p_buf);
    } else {
        btm_cb.paging = FALSE;
    }

}
