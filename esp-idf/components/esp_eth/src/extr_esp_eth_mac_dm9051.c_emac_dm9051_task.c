
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_8__ {scalar_t__ (* receive ) (TYPE_3__*,int*,scalar_t__*) ;} ;
struct TYPE_6__ {TYPE_2__* eth; TYPE_3__ parent; scalar_t__ packets_remain; } ;
typedef TYPE_1__ emac_dm9051_t ;
struct TYPE_7__ {int (* stack_input ) (TYPE_2__*,int*,scalar_t__) ;} ;


 int DM9051_ISR ;
 scalar_t__ ESP_OK ;
 scalar_t__ ETH_MAX_PACKET_SIZE ;
 int ISR_PR ;
 int MALLOC_CAP_DMA ;
 int dm9051_register_read (TYPE_1__*,int ,int*) ;
 int dm9051_register_write (TYPE_1__*,int ,int) ;
 int free (int*) ;
 scalar_t__ heap_caps_malloc (scalar_t__,int ) ;
 int pdFALSE ;
 int portMAX_DELAY ;
 scalar_t__ stub1 (TYPE_3__*,int*,scalar_t__*) ;
 int stub2 (TYPE_2__*,int*,scalar_t__) ;
 int ulTaskNotifyTake (int ,int ) ;
 int vTaskDelete (int *) ;

__attribute__((used)) static void emac_dm9051_task(void *arg)
{
    emac_dm9051_t *emac = (emac_dm9051_t *)arg;
    uint8_t status = 0;
    uint8_t *buffer = ((void*)0);
    uint32_t length = 0;
    while (1) {

        ulTaskNotifyTake(pdFALSE, portMAX_DELAY);

        dm9051_register_read(emac, DM9051_ISR, &status);
        dm9051_register_write(emac, DM9051_ISR, status);

        if (status & ISR_PR) {
            do {
                length = ETH_MAX_PACKET_SIZE;
                buffer = (uint8_t *)heap_caps_malloc(length, MALLOC_CAP_DMA);
                if (emac->parent.receive(&emac->parent, buffer, &length) == ESP_OK) {

                    if (length) {
                        emac->eth->stack_input(emac->eth, buffer, length);
                    } else {
                        free(buffer);
                    }
                } else {
                    free(buffer);
                }
            } while (emac->packets_remain);
        }
    }
    vTaskDelete(((void*)0));
}
