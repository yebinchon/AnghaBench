
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hci_handle; scalar_t__ in_use; } ;
typedef TYPE_1__ tACL_CONN ;
typedef scalar_t__ UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_4__ {TYPE_1__* acl_db; } ;


 int BTM_TRACE_DEBUG (char*) ;
 scalar_t__ MAX_L2CAP_LINKS ;
 TYPE_2__ btm_cb ;

UINT8 btm_handle_to_acl_index (UINT16 hci_handle)
{
    tACL_CONN *p = &btm_cb.acl_db[0];
    UINT8 xx;
    BTM_TRACE_DEBUG ("btm_handle_to_acl_index\n");
    for (xx = 0; xx < MAX_L2CAP_LINKS; xx++, p++) {
        if ((p->in_use) && (p->hci_handle == hci_handle)) {
            break;
        }
    }


    return (xx);
}
