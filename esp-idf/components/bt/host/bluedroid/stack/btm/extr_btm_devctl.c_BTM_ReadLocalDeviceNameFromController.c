
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_STATUS ;
typedef int tBTM_CMPL_CB ;
struct TYPE_3__ {int rln_timer; int * p_rln_cmpl_cb; } ;
struct TYPE_4__ {TYPE_1__ devcb; } ;


 int BTM_CMD_STARTED ;
 int BTM_DEV_REPLY_TIMEOUT ;
 int BTM_NO_RESOURCES ;
 int BTU_TTYPE_BTM_DEV_CTL ;
 TYPE_2__ btm_cb ;
 int btsnd_hcic_read_name () ;
 int btu_start_timer (int *,int ,int ) ;

tBTM_STATUS BTM_ReadLocalDeviceNameFromController (tBTM_CMPL_CB *p_rln_cmpl_cback)
{

    if (btm_cb.devcb.p_rln_cmpl_cb) {
        return (BTM_NO_RESOURCES);
    }


    btm_cb.devcb.p_rln_cmpl_cb = p_rln_cmpl_cback;

    btsnd_hcic_read_name();
    btu_start_timer (&btm_cb.devcb.rln_timer, BTU_TTYPE_BTM_DEV_CTL, BTM_DEV_REPLY_TIMEOUT);

    return BTM_CMD_STARTED;
}
