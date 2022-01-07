
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_STATUS ;
typedef int tBTM_CMPL_CB ;
struct TYPE_3__ {int * p_stored_link_key_cmpl_cb; } ;
struct TYPE_4__ {TYPE_1__ devcb; } ;
typedef scalar_t__ BOOLEAN ;
typedef int BD_ADDR ;


 int BTM_BUSY ;
 int BTM_NO_RESOURCES ;
 int BTM_SUCCESS ;
 int BTM_TRACE_EVENT (char*,char*) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 TYPE_2__ btm_cb ;
 int btsnd_hcic_delete_stored_key (int ,scalar_t__) ;

tBTM_STATUS BTM_DeleteStoredLinkKey(BD_ADDR bd_addr, tBTM_CMPL_CB *p_cb)
{
    BD_ADDR local_bd_addr;
    BOOLEAN delete_all_flag = FALSE;


    if (btm_cb.devcb.p_stored_link_key_cmpl_cb) {
        return (BTM_BUSY);
    }

    if (!bd_addr) {

        delete_all_flag = TRUE;


        bd_addr = local_bd_addr;
    }

    BTM_TRACE_EVENT ("BTM: BTM_DeleteStoredLinkKey: delete_all_flag: %s",
                     delete_all_flag ? "TRUE" : "FALSE");


    btm_cb.devcb.p_stored_link_key_cmpl_cb = p_cb;
    if (!btsnd_hcic_delete_stored_key (bd_addr, delete_all_flag)) {
        return (BTM_NO_RESOURCES);
    } else {
        return (BTM_SUCCESS);
    }
}
