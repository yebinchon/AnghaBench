
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_3__ {TYPE_2__* eth; int parent; scalar_t__ frames_remain; } ;
typedef TYPE_1__ emac_esp32_t ;
struct TYPE_4__ {int (* stack_input ) (TYPE_2__*,int *,scalar_t__) ;} ;


 scalar_t__ ESP_OK ;
 scalar_t__ ETH_MAX_PACKET_SIZE ;
 scalar_t__ emac_esp32_receive (int *,int *,scalar_t__*) ;
 int free (int *) ;
 scalar_t__ malloc (scalar_t__) ;
 int pdFALSE ;
 int portMAX_DELAY ;
 int stub1 (TYPE_2__*,int *,scalar_t__) ;
 int ulTaskNotifyTake (int ,int ) ;
 int vTaskDelete (int *) ;

__attribute__((used)) static void emac_esp32_rx_task(void *arg)
{
    emac_esp32_t *emac = (emac_esp32_t *)arg;
    uint8_t *buffer = ((void*)0);
    uint32_t length = 0;
    while (1) {

        ulTaskNotifyTake(pdFALSE, portMAX_DELAY);
        do {
            length = ETH_MAX_PACKET_SIZE;
            buffer = (uint8_t *)malloc(length);
            if (emac_esp32_receive(&emac->parent, buffer, &length) == ESP_OK) {

                if (length) {
                    emac->eth->stack_input(emac->eth, buffer, length);
                } else {
                    free(buffer);
                }
            } else {
                free(buffer);
            }
        } while (emac->frames_remain);
    }
    vTaskDelete(((void*)0));
}
