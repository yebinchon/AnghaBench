
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int id; int is_primary; } ;
typedef TYPE_1__ tBTA_GATT_SRVC_ID ;
struct TYPE_6__ {int id; int is_primary; } ;
typedef TYPE_2__ esp_gatt_srvc_id_t ;


 int btc_to_bta_gatt_id (int *,int *) ;

void btc_to_bta_srvc_id(tBTA_GATT_SRVC_ID *p_dest, esp_gatt_srvc_id_t *p_src)
{
    p_dest->is_primary = p_src->is_primary;
    btc_to_bta_gatt_id(&p_dest->id, &p_src->id);
}
