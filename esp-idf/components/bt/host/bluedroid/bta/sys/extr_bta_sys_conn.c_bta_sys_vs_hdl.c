
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT16 ;
struct TYPE_2__ {int (* p_vs_evt_hdlr ) (int ,void*) ;} ;
typedef int BOOLEAN ;


 int FALSE ;
 TYPE_1__ bta_sys_cb ;
 int stub1 (int ,void*) ;

BOOLEAN bta_sys_vs_hdl(UINT16 evt, void *p)
{
    if (bta_sys_cb.p_vs_evt_hdlr) {
        return (*bta_sys_cb.p_vs_evt_hdlr)(evt, p);
    }

    return FALSE;
}
