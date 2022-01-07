
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int item_size; int size; int * data; int * free_ptr; int * read_ptr; int * write_ptr; int * remain_cnt; } ;
typedef TYPE_1__ sdio_ringbuf_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_STATE ;
 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 int SDIO_SLAVE_LOGE (char*) ;
 scalar_t__ malloc (int) ;
 int sdio_ringbuf_deinit (TYPE_1__*) ;
 int * xSemaphoreCreateCounting (int,int) ;

__attribute__((used)) static esp_err_t sdio_ringbuf_init(sdio_ringbuf_t* buf, int item_size, int item_cnt)
{
    if (buf->data != ((void*)0)) {
        SDIO_SLAVE_LOGE("sdio_ringbuf_init: already initialized");
        return ESP_ERR_INVALID_STATE;
    }
    buf->item_size = item_size;

    buf->size = item_size * (item_cnt+1);

    buf->data = (uint8_t*)malloc(buf->size);
    if (buf->data == ((void*)0)) goto no_mem;
    buf->remain_cnt = xSemaphoreCreateCounting(item_cnt, item_cnt);
    if (buf->remain_cnt == ((void*)0)) goto no_mem;

    buf->write_ptr = buf->data;
    buf->read_ptr = buf->data;
    buf->free_ptr = buf->data;
    return ESP_OK;
no_mem:
    sdio_ringbuf_deinit(buf);
    return ESP_ERR_NO_MEM;
}
