
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_6__ {size_t size; size_t length; int owner; int eof; void* arg; int * buf; } ;
typedef TYPE_2__ buf_desc_t ;
typedef int TickType_t ;
struct TYPE_5__ {int sending_mode; } ;
struct TYPE_7__ {int sendbuf; TYPE_1__ config; } ;


 int ESP_ERR_INVALID_ARG ;
 scalar_t__ ESP_OK ;
 int SDIO_SLAVE_CHECK (int,char*,int ) ;
 int SDIO_SLAVE_SEND_PACKET ;
 TYPE_4__ context ;
 scalar_t__ esp_ptr_dma_capable (int *) ;
 scalar_t__ sdio_ringbuf_send (int *,int ,TYPE_2__*,int ) ;
 int send_isr_invoke () ;
 int send_write_desc ;

esp_err_t sdio_slave_send_queue(uint8_t* addr, size_t len, void* arg, TickType_t wait)
{
    SDIO_SLAVE_CHECK(len > 0, "len <= 0", ESP_ERR_INVALID_ARG);
    SDIO_SLAVE_CHECK(esp_ptr_dma_capable(addr) && (uint32_t)addr%4==0, "buffer to send should be DMA capable and 32-bit aligned",
        ESP_ERR_INVALID_ARG);

    buf_desc_t new_desc = {
        .size = len,
        .length = len,
        .buf = addr,
        .owner = 1,

        .eof = (context.config.sending_mode == SDIO_SLAVE_SEND_PACKET?1:0),
        .arg = arg,
    };

    esp_err_t ret = sdio_ringbuf_send(&context.sendbuf, send_write_desc, &new_desc, wait);
    if (ret != ESP_OK) return ret;

    send_isr_invoke();
    return ESP_OK;
}
