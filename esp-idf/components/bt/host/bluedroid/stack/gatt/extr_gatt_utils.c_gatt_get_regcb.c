
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int in_use; } ;
typedef TYPE_1__ tGATT_REG ;
typedef int tGATT_IF ;
typedef int UINT8 ;
struct TYPE_5__ {TYPE_1__* cl_rcb; } ;


 int GATT_MAX_APPS ;
 int GATT_TRACE_WARNING (char*,...) ;
 TYPE_3__ gatt_cb ;

tGATT_REG *gatt_get_regcb (tGATT_IF gatt_if)
{
    UINT8 ii = (UINT8)gatt_if;
    tGATT_REG *p_reg = ((void*)0);

    if (ii < 1 || ii > GATT_MAX_APPS) {
        GATT_TRACE_WARNING("gatt_if out of range [ = %d]", ii);
        return ((void*)0);
    }


    p_reg = &gatt_cb.cl_rcb[ii - 1];

    if (!p_reg->in_use) {
        GATT_TRACE_WARNING("gatt_if found but not in use.\n");
        return ((void*)0);
    }

    return p_reg;
}
