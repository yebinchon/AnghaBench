
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int acl_disc_reason; int btm_def_link_super_tout; int * p_bl_changed_cb; scalar_t__ btm_def_link_policy; int * btm_scn; int acl_db; } ;


 int BTM_MAX_SCN ;
 int BTM_TRACE_DEBUG (char*) ;
 int HCI_DEFAULT_INACT_TOUT ;
 TYPE_1__ btm_cb ;
 int memset (int *,int ,int) ;

void btm_acl_init (void)
{
    BTM_TRACE_DEBUG ("btm_acl_init\n");
    btm_cb.btm_def_link_super_tout = HCI_DEFAULT_INACT_TOUT;
    btm_cb.acl_disc_reason = 0xff ;
}
