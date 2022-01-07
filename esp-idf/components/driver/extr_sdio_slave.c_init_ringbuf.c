
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ esp_err_t ;
typedef int buf_desc_t ;
struct TYPE_3__ {int send_queue_size; } ;
struct TYPE_4__ {int sendbuf; TYPE_1__ config; } ;


 scalar_t__ ESP_OK ;
 int RINGBUF_GET_ALL ;
 int RINGBUF_GET_ONE ;
 int assert (int) ;
 TYPE_2__ context ;
 int * link_desc_to_last ;
 int portMAX_DELAY ;
 scalar_t__ sdio_ringbuf_init (int *,int,int) ;
 scalar_t__ sdio_ringbuf_recv (int *,int **,int **,int ,int ) ;
 int sdio_ringbuf_return (int *,int *) ;
 scalar_t__ sdio_ringbuf_send (int *,int *,int *,int ) ;

__attribute__((used)) static esp_err_t init_ringbuf(void)
{
    esp_err_t ret = sdio_ringbuf_init(&context.sendbuf, sizeof(buf_desc_t), context.config.send_queue_size);
    if (ret != ESP_OK) return ret;

    esp_err_t rcv_res;
    buf_desc_t *first=((void*)0), *last=((void*)0);


    ret = sdio_ringbuf_send(&context.sendbuf, ((void*)0), ((void*)0), portMAX_DELAY);
    if (ret != ESP_OK) return ret;


    for (int i = 0; i < context.config.send_queue_size+1; i++) {
        rcv_res = sdio_ringbuf_recv(&context.sendbuf, (uint8_t**)&last, ((void*)0), RINGBUF_GET_ONE, 0);
        assert (rcv_res == ESP_OK);
        ret = sdio_ringbuf_send(&context.sendbuf, link_desc_to_last, last, portMAX_DELAY);
        if (ret != ESP_OK) return ret;
        sdio_ringbuf_return(&context.sendbuf, (uint8_t*)last);
    }
    first = ((void*)0);
    last = ((void*)0);

    rcv_res = sdio_ringbuf_recv(&context.sendbuf, (uint8_t**)&first, (uint8_t**)&last, RINGBUF_GET_ALL, 0);
    assert (rcv_res == ESP_OK);
    assert(first == last);
    sdio_ringbuf_return(&context.sendbuf, (uint8_t*)first);
    return ESP_OK;
}
