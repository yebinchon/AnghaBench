
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * remname_bda; scalar_t__ remname_active; } ;
struct TYPE_4__ {TYPE_1__ btm_inq_vars; } ;


 int BTM_TRACE_ERROR (char*,scalar_t__) ;
 int HCI_ERR_UNSPECIFIED ;
 TYPE_2__ btm_cb ;
 int btm_process_remote_name (int *,int *,int ,int ) ;
 int btm_sec_rmt_name_request_complete (int *,int *,int ) ;

void btm_inq_rmt_name_failed (void)
{
    BTM_TRACE_ERROR ("btm_inq_rmt_name_failed()  remname_active=%d\n", btm_cb.btm_inq_vars.remname_active);

    if (btm_cb.btm_inq_vars.remname_active) {
        btm_process_remote_name (btm_cb.btm_inq_vars.remname_bda, ((void*)0), 0, HCI_ERR_UNSPECIFIED);
    } else {
        btm_process_remote_name (((void*)0), ((void*)0), 0, HCI_ERR_UNSPECIFIED);
    }

    btm_sec_rmt_name_request_complete (((void*)0), ((void*)0), HCI_ERR_UNSPECIFIED);

}
