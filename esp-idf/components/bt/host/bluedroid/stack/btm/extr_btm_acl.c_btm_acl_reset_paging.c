
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int paging; int page_queue; } ;
typedef int BT_HDR ;


 int BTM_TRACE_DEBUG (char*) ;
 int FALSE ;
 TYPE_1__ btm_cb ;
 scalar_t__ fixed_queue_dequeue (int ,int ) ;
 int osi_free (int *) ;

void btm_acl_reset_paging (void)
{
    BT_HDR *p;
    BTM_TRACE_DEBUG ("btm_acl_reset_paging\n");

    while ((p = (BT_HDR *)fixed_queue_dequeue(btm_cb.page_queue, 0)) != ((void*)0)) {
        osi_free (p);
    }

    btm_cb.paging = FALSE;
}
