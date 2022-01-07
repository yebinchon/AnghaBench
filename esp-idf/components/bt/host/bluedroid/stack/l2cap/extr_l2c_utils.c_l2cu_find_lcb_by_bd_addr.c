
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ transport; int remote_bd_addr; scalar_t__ in_use; } ;
typedef TYPE_1__ tL2C_LCB ;
typedef scalar_t__ tBT_TRANSPORT ;
struct TYPE_5__ {TYPE_1__* lcb_pool; } ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int MAX_L2CAP_LINKS ;
 TYPE_3__ l2cb ;
 int memcmp (int ,int ,int ) ;

tL2C_LCB *l2cu_find_lcb_by_bd_addr (BD_ADDR p_bd_addr, tBT_TRANSPORT transport)
{
    int xx;
    tL2C_LCB *p_lcb = &l2cb.lcb_pool[0];

    for (xx = 0; xx < MAX_L2CAP_LINKS; xx++, p_lcb++) {
        if ((p_lcb->in_use) &&

                p_lcb->transport == transport &&

                (!memcmp (p_lcb->remote_bd_addr, p_bd_addr, BD_ADDR_LEN))) {
            return (p_lcb);
        }
    }


    return (((void*)0));
}
