
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* uint32_t ;
typedef int esp_err_t ;
struct TYPE_5__ {void* pkt_len; scalar_t__ length; } ;
typedef TYPE_1__ buf_desc_t ;
struct TYPE_6__ {int sendbuf; TYPE_1__* in_flight; } ;


 int ESP_ERR_INVALID_STATE ;
 int ESP_OK ;
 int SDIO_SLAVE_CHECK (int,char*,int ) ;
 TYPE_1__* STAILQ_NEXT (TYPE_1__*,int ) ;
 scalar_t__ STATE_IDLE ;
 TYPE_2__ context ;
 int qe ;
 scalar_t__ sdio_ringbuf_peek_front (int *) ;
 scalar_t__ sdio_ringbuf_peek_rear (int *) ;
 scalar_t__ send_get_state () ;
 int send_length_write (int ) ;

__attribute__((used)) static esp_err_t send_reset_counter(void)
{
    SDIO_SLAVE_CHECK(send_get_state() == STATE_IDLE,
        "reset counter when transmission started", ESP_ERR_INVALID_STATE);

    send_length_write(0);

    uint32_t last_cnt=0;
    buf_desc_t *desc = context.in_flight;
    buf_desc_t *last = ((void*)0);
    while(desc != ((void*)0)) {
        last_cnt += desc->length;
        desc->pkt_len = last_cnt;
        last = desc;
        desc = STAILQ_NEXT(desc, qe);
    }


    desc = (buf_desc_t*)sdio_ringbuf_peek_front(&context.sendbuf);
    while(desc != ((void*)0)) {
        last_cnt += desc->length;
        desc->pkt_len = last_cnt;
        last = desc;
        desc = STAILQ_NEXT(desc, qe);
    }
    if (last == ((void*)0)) {
        last = (buf_desc_t*)sdio_ringbuf_peek_rear(&context.sendbuf);
        last->pkt_len = 0;
    }

    return ESP_OK;
}
