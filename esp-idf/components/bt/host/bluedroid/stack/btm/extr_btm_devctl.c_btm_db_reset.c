
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_STATUS ;
typedef void tBTM_RSSI_RESULTS ;
typedef int (* tBTM_CMPL_CB ) (void*) ;
struct TYPE_3__ {int (* p_rssi_cmpl_cb ) (void*) ;int (* p_rln_cmpl_cb ) (void*) ;} ;
struct TYPE_4__ {TYPE_1__ devcb; } ;


 int BTM_DEV_RESET ;
 TYPE_2__ btm_cb ;
 int btm_inq_db_reset () ;
 int stub1 (void*) ;
 int stub2 (void*) ;

__attribute__((used)) static void btm_db_reset (void)
{
    tBTM_CMPL_CB *p_cb;
    tBTM_STATUS status = BTM_DEV_RESET;

    btm_inq_db_reset();

    if (btm_cb.devcb.p_rln_cmpl_cb) {
        p_cb = btm_cb.devcb.p_rln_cmpl_cb;
        btm_cb.devcb.p_rln_cmpl_cb = ((void*)0);

        if (p_cb) {
            (*p_cb)((void *) ((void*)0));
        }
    }

    if (btm_cb.devcb.p_rssi_cmpl_cb) {
        p_cb = btm_cb.devcb.p_rssi_cmpl_cb;
        btm_cb.devcb.p_rssi_cmpl_cb = ((void*)0);

        if (p_cb) {
            (*p_cb)((tBTM_RSSI_RESULTS *) &status);
        }
    }
}
