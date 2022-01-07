
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int uuid; int inst_id; } ;
typedef TYPE_1__ tBTA_GATT_ID ;
struct TYPE_6__ {int uuid; int inst_id; } ;
typedef TYPE_2__ esp_gatt_id_t ;


 int bta_to_btc_uuid (int *,int *) ;

void bta_to_btc_gatt_id(esp_gatt_id_t *p_dest, tBTA_GATT_ID *p_src)
{
    p_dest->inst_id = p_src->inst_id;
    bta_to_btc_uuid(&p_dest->uuid, &p_src->uuid);
}
