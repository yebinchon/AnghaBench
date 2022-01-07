
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_3__ {TYPE_2__* eth; int parent; } ;
typedef TYPE_1__ emac_opencores_t ;
struct TYPE_4__ {int (* stack_input ) (TYPE_2__*,int *,scalar_t__) ;} ;


 scalar_t__ ESP_OK ;
 scalar_t__ ETH_MAX_PACKET_SIZE ;
 scalar_t__ emac_opencores_receive (int *,int *,scalar_t__*) ;
 int free (int *) ;
 scalar_t__ malloc (scalar_t__) ;
 int pdFALSE ;
 int portMAX_DELAY ;
 int stub1 (TYPE_2__*,int *,scalar_t__) ;
 scalar_t__ ulTaskNotifyTake (int ,int ) ;
 int vTaskDelete (int *) ;

__attribute__((used)) static void emac_opencores_rx_task(void *arg)
{
    emac_opencores_t *emac = (emac_opencores_t *)arg;
    uint8_t *buffer = ((void*)0);
    uint32_t length = 0;
    while (1) {
        if (ulTaskNotifyTake(pdFALSE, portMAX_DELAY)) {
            while(1) {
                buffer = (uint8_t *)malloc(ETH_MAX_PACKET_SIZE);
                length = ETH_MAX_PACKET_SIZE;
                if (emac_opencores_receive(&emac->parent, buffer, &length) == ESP_OK) {

                    if (length) {
                        emac->eth->stack_input(emac->eth, buffer, length);
                    } else {
                        free(buffer);
                    }
                } else {
                    free(buffer);
                    break;
                }
            }
        }
    }
    vTaskDelete(((void*)0));
}
