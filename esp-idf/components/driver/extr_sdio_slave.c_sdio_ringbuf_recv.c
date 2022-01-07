
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int * read_ptr; int * write_ptr; int item_size; int * free_ptr; } ;
typedef TYPE_1__ sdio_ringbuf_t ;
typedef scalar_t__ ringbuf_get_all_t ;
typedef int esp_err_t ;
typedef scalar_t__ TickType_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NOT_FOUND ;
 int ESP_OK ;
 scalar_t__ RINGBUF_GET_ONE ;
 int assert (int) ;
 int ringbuf_read_ptr ;
 int * sdio_ringbuf_offset_ptr (TYPE_1__*,int ,int ) ;

__attribute__((used)) static inline esp_err_t sdio_ringbuf_recv(sdio_ringbuf_t* buf, uint8_t **start, uint8_t **end, ringbuf_get_all_t get_all, TickType_t wait)
{
    assert(buf->free_ptr == buf->read_ptr);
    assert(wait == 0);
    if (start == ((void*)0) && end == ((void*)0)) return ESP_ERR_INVALID_ARG;
    if (buf->read_ptr == buf->write_ptr) return ESP_ERR_NOT_FOUND;

    uint8_t *get_start = sdio_ringbuf_offset_ptr(buf, ringbuf_read_ptr, buf->item_size);

    if (get_all != RINGBUF_GET_ONE) {
        buf->read_ptr = buf->write_ptr;
    } else {
        buf->read_ptr = get_start;
    }

    if (start != ((void*)0)) *start = get_start;
    if (end != ((void*)0)) *end = buf->read_ptr;
    return ESP_OK;
}
