
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;


 int BTM_BLI_INQ_CANCEL_EVT ;
 int btm_acl_update_busy_level (int ) ;
 int btm_process_inq_complete (int ,int ) ;

void btm_process_cancel_complete(UINT8 status, UINT8 mode)
{
    btm_acl_update_busy_level (BTM_BLI_INQ_CANCEL_EVT);
    btm_process_inq_complete(status, mode);
}
