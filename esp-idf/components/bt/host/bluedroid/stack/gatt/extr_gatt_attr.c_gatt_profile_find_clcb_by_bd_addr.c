
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ transport; int bda; scalar_t__ connected; scalar_t__ in_use; } ;
typedef TYPE_1__ tGATT_PROFILE_CLCB ;
typedef scalar_t__ tBT_TRANSPORT ;
typedef scalar_t__ UINT8 ;
struct TYPE_5__ {TYPE_1__* profile_clcb; } ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 scalar_t__ GATT_MAX_APPS ;
 TYPE_3__ gatt_cb ;
 int memcmp (int ,int ,int ) ;

__attribute__((used)) static tGATT_PROFILE_CLCB *gatt_profile_find_clcb_by_bd_addr(BD_ADDR bda, tBT_TRANSPORT transport)
{
    UINT8 i_clcb;
    tGATT_PROFILE_CLCB *p_clcb = ((void*)0);

    for (i_clcb = 0, p_clcb = gatt_cb.profile_clcb; i_clcb < GATT_MAX_APPS; i_clcb++, p_clcb++) {
        if (p_clcb->in_use && p_clcb->transport == transport &&
                p_clcb->connected && !memcmp(p_clcb->bda, bda, BD_ADDR_LEN)) {
            return p_clcb;
        }
    }

    return ((void*)0);
}
