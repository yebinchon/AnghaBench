
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {scalar_t__ Own; int FrameLength; scalar_t__ LastDescriptor; scalar_t__ FirstDescriptor; } ;
struct TYPE_8__ {scalar_t__ Buffer2NextDescAddr; TYPE_1__ RDES0; scalar_t__ Buffer1Addr; } ;
typedef TYPE_3__ eth_dma_rx_descriptor_t ;
struct TYPE_9__ {TYPE_2__* dma_regs; TYPE_3__* rx_desc; } ;
typedef TYPE_4__ emac_hal_context_t ;
struct TYPE_7__ {scalar_t__ dmarxpolldemand; } ;


 int CONFIG_ETH_DMA_BUFFER_SIZE ;
 int CONFIG_ETH_DMA_RX_BUFFER_NUM ;
 scalar_t__ EMAC_DMADESC_OWNER_DMA ;
 int ETH_CRC_LENGTH ;
 int memcpy (int *,void*,int) ;

uint32_t emac_hal_receive_frame(emac_hal_context_t *hal, uint8_t *buf, uint32_t size, uint32_t *frames_remain)
{
    eth_dma_rx_descriptor_t *desc_iter = ((void*)0);
    eth_dma_rx_descriptor_t *first_desc = ((void*)0);
    uint32_t iter = 0;
    uint32_t seg_count = 0;
    uint32_t len = 0;
    uint32_t frame_count = 0;

    first_desc = hal->rx_desc;
    desc_iter = hal->rx_desc;

    while ((desc_iter->RDES0.Own != EMAC_DMADESC_OWNER_DMA) && (iter < CONFIG_ETH_DMA_RX_BUFFER_NUM) && !frame_count) {
        iter++;
        seg_count++;

        if (desc_iter->RDES0.LastDescriptor) {

            len = desc_iter->RDES0.FrameLength - ETH_CRC_LENGTH;

            if (len > size) {


                return len;
            }

            frame_count++;
        }

        if (desc_iter->RDES0.FirstDescriptor) {
            first_desc = desc_iter;
        }

        desc_iter = (eth_dma_rx_descriptor_t *)(desc_iter->Buffer2NextDescAddr);
    }

    if (frame_count) {

        while ((desc_iter->RDES0.Own != EMAC_DMADESC_OWNER_DMA) && (iter < CONFIG_ETH_DMA_RX_BUFFER_NUM)) {
            iter++;
            if (desc_iter->RDES0.LastDescriptor) {
                frame_count++;
            }

            desc_iter = (eth_dma_rx_descriptor_t *)(desc_iter->Buffer2NextDescAddr);
        }
        desc_iter = first_desc;
        for (iter = 0; iter < seg_count - 1; iter++) {

            memcpy(buf + iter * CONFIG_ETH_DMA_BUFFER_SIZE,
                   (void *)(desc_iter->Buffer1Addr), CONFIG_ETH_DMA_BUFFER_SIZE);

            desc_iter->RDES0.Own = EMAC_DMADESC_OWNER_DMA;
            desc_iter = (eth_dma_rx_descriptor_t *)(desc_iter->Buffer2NextDescAddr);
        }
        memcpy(buf + iter * CONFIG_ETH_DMA_BUFFER_SIZE,
               (void *)(desc_iter->Buffer1Addr), len % CONFIG_ETH_DMA_BUFFER_SIZE);
        desc_iter->RDES0.Own = EMAC_DMADESC_OWNER_DMA;

        hal->rx_desc = (eth_dma_rx_descriptor_t *)(desc_iter->Buffer2NextDescAddr);

        hal->dma_regs->dmarxpolldemand = 0;
        frame_count--;
    }
    *frames_remain = frame_count;
    return len;
}
