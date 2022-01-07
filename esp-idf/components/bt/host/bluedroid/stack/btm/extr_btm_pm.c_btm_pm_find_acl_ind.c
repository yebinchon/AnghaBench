
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ transport; int remote_addr; scalar_t__ in_use; } ;
typedef TYPE_2__ tACL_CONN ;
typedef size_t UINT8 ;
struct TYPE_6__ {TYPE_1__* pm_mode_db; TYPE_2__* acl_db; } ;
struct TYPE_4__ {int state; } ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int BTM_TRACE_DEBUG (char*,size_t,int ) ;
 scalar_t__ BT_TRANSPORT_BR_EDR ;
 size_t MAX_L2CAP_LINKS ;
 TYPE_3__ btm_cb ;
 int memcmp (int ,int ,int ) ;

__attribute__((used)) static int btm_pm_find_acl_ind(BD_ADDR remote_bda)
{
    tACL_CONN *p = &btm_cb.acl_db[0];
    UINT8 xx;

    for (xx = 0; xx < MAX_L2CAP_LINKS; xx++, p++) {
        if ((p->in_use) && (!memcmp (p->remote_addr, remote_bda, BD_ADDR_LEN))

                && p->transport == BT_TRANSPORT_BR_EDR

           ) {

            BTM_TRACE_DEBUG( "btm_pm_find_acl_ind ind:%d, st:%d", xx, btm_cb.pm_mode_db[xx].state);

            break;
        }
    }
    return xx;
}
