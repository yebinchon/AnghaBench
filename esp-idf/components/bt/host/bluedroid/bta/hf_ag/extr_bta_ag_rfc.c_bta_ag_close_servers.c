
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTA_SERVICE_MASK ;
struct TYPE_3__ {scalar_t__* serv_handle; } ;
typedef TYPE_1__ tBTA_AG_SCB ;


 int BTA_AG_NUM_IDX ;
 int BTA_HSP_SERVICE_ID ;
 int RFCOMM_RemoveServer (scalar_t__) ;

void bta_ag_close_servers(tBTA_AG_SCB *p_scb, tBTA_SERVICE_MASK services)
{
    int i;

    services >>= BTA_HSP_SERVICE_ID;
    for (i = 0; i < BTA_AG_NUM_IDX && services != 0; i++, services >>= 1) {

        if (services & 1) {
            RFCOMM_RemoveServer(p_scb->serv_handle[i]);
            p_scb->serv_handle[i] = 0;
        }
    }
}
