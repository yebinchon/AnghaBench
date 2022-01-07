
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTA_SYS_HW_MODULE ;
struct TYPE_4__ {scalar_t__* is_reg; TYPE_1__** reg; } ;
struct TYPE_3__ {int (* disable ) () ;} ;


 int APPL_TRACE_DEBUG (char*,int) ;
 int APPL_TRACE_WARNING (char*) ;
 int BTA_ID_BLUETOOTH_MAX ;
 int BTA_ID_DM ;

 scalar_t__ TRUE ;
 TYPE_2__ bta_sys_cb ;
 int stub1 () ;

void bta_sys_disable(tBTA_SYS_HW_MODULE module)
{
    int bta_id = 0;
    int bta_id_max = 0;

    APPL_TRACE_DEBUG("bta_sys_disable: module %i", module);

    switch ( module ) {
    case 128:
        bta_id = BTA_ID_DM;
        bta_id_max = BTA_ID_BLUETOOTH_MAX;
        break;
    default:
        APPL_TRACE_WARNING("bta_sys_disable: unkown module");
        return;
    }

    for ( ; bta_id <= bta_id_max; bta_id++) {
        if (bta_sys_cb.reg[bta_id] != ((void*)0)) {
            if (bta_sys_cb.is_reg[bta_id] == TRUE && bta_sys_cb.reg[bta_id]->disable != ((void*)0)) {
                (*bta_sys_cb.reg[bta_id]->disable)();
            }
        }
    }
}
