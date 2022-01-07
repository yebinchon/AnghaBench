
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dev_class; int bd_addr; } ;
typedef TYPE_1__ tBTM_SEC_DEV_REC ;
struct TYPE_5__ {int* connecting_bda; int* connecting_dc; void* paging; int page_queue; scalar_t__ discing; } ;
typedef int BT_HDR ;
typedef int* BD_ADDR ;


 int BD_ADDR_LEN ;
 int BTM_ACL_IS_CONNECTED (int*) ;
 int BTM_TRACE_DEBUG (char*,int,int,...) ;
 int DEV_CLASS_LEN ;
 int FIXED_QUEUE_MAX_TIMEOUT ;
 int LOCAL_BR_EDR_CONTROLLER_ID ;
 void* TRUE ;
 TYPE_3__ btm_cb ;
 TYPE_1__* btm_find_or_alloc_dev (int*) ;
 int btu_hcif_send_cmd (int ,int *) ;
 int fixed_queue_enqueue (int ,int *,int ) ;
 scalar_t__ memcmp (int*,int*,int ) ;
 int memcpy (int*,int ,int ) ;

void btm_acl_paging (BT_HDR *p, BD_ADDR bda)
{
    tBTM_SEC_DEV_REC *p_dev_rec;

    BTM_TRACE_DEBUG ("btm_acl_paging discing:%d, paging:%d BDA: %06x%06x\n",
                     btm_cb.discing, btm_cb.paging,
                     (bda[0] << 16) + (bda[1] << 8) + bda[2], (bda[3] << 16) + (bda[4] << 8) + bda[5]);
    if (btm_cb.discing) {
        btm_cb.paging = TRUE;
        fixed_queue_enqueue(btm_cb.page_queue, p, FIXED_QUEUE_MAX_TIMEOUT);
    } else {
        if (!BTM_ACL_IS_CONNECTED (bda)) {
            BTM_TRACE_DEBUG ("connecting_bda: %06x%06x\n",
                             (btm_cb.connecting_bda[0] << 16) + (btm_cb.connecting_bda[1] << 8) +
                             btm_cb.connecting_bda[2],
                             (btm_cb.connecting_bda[3] << 16) + (btm_cb.connecting_bda[4] << 8) +
                             btm_cb.connecting_bda[5]);
            if (btm_cb.paging &&
                    memcmp (bda, btm_cb.connecting_bda, BD_ADDR_LEN) != 0) {
                fixed_queue_enqueue(btm_cb.page_queue, p, FIXED_QUEUE_MAX_TIMEOUT);
            } else {
                p_dev_rec = btm_find_or_alloc_dev (bda);
                memcpy (btm_cb.connecting_bda, p_dev_rec->bd_addr, BD_ADDR_LEN);
                memcpy (btm_cb.connecting_dc, p_dev_rec->dev_class, DEV_CLASS_LEN);

                btu_hcif_send_cmd (LOCAL_BR_EDR_CONTROLLER_ID, p);
            }

            btm_cb.paging = TRUE;
        } else {
            btu_hcif_send_cmd (LOCAL_BR_EDR_CONTROLLER_ID, p);
        }
    }
}
