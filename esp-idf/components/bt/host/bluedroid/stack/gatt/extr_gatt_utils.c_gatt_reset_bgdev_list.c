
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tGATT_BG_CONN_DEV ;
struct TYPE_2__ {int bgconn_dev; } ;


 int GATT_MAX_BG_CONN_DEV ;
 TYPE_1__ gatt_cb ;
 int memset (int *,int ,int) ;

void gatt_reset_bgdev_list(void)
{
    memset(&gatt_cb.bgconn_dev, 0 , sizeof(tGATT_BG_CONN_DEV)*GATT_MAX_BG_CONN_DEV);

}
