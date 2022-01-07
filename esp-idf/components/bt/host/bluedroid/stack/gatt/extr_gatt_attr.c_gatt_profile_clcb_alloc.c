
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bda; int transport; void* connected; int conn_id; void* in_use; } ;
typedef TYPE_1__ tGATT_PROFILE_CLCB ;
typedef int tBT_TRANSPORT ;
typedef scalar_t__ UINT8 ;
typedef int UINT16 ;
struct TYPE_5__ {TYPE_1__* profile_clcb; } ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 scalar_t__ GATT_MAX_APPS ;
 void* TRUE ;
 TYPE_3__ gatt_cb ;
 int memcpy (int ,int ,int ) ;

tGATT_PROFILE_CLCB *gatt_profile_clcb_alloc (UINT16 conn_id, BD_ADDR bda, tBT_TRANSPORT tranport)
{
    UINT8 i_clcb = 0;
    tGATT_PROFILE_CLCB *p_clcb = ((void*)0);

    for (i_clcb = 0, p_clcb = gatt_cb.profile_clcb; i_clcb < GATT_MAX_APPS; i_clcb++, p_clcb++) {
        if (!p_clcb->in_use) {
            p_clcb->in_use = TRUE;
            p_clcb->conn_id = conn_id;
            p_clcb->connected = TRUE;
            p_clcb->transport = tranport;
            memcpy (p_clcb->bda, bda, BD_ADDR_LEN);
            break;
        }
    }
    if (i_clcb < GATT_MAX_APPS) {
        return p_clcb;
    }

    return ((void*)0);
}
