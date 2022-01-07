
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ sdio_slave_buf_handle_t ;
typedef scalar_t__ portBASE_TYPE ;
typedef int esp_err_t ;
typedef int buf_stailq_t ;
struct TYPE_5__ {scalar_t__ owner; size_t length; int * buf; } ;
typedef TYPE_1__ buf_desc_t ;
typedef int TickType_t ;
struct TYPE_6__ {int recv_reg_list; int recv_link_list; int recv_event; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_TIMEOUT ;
 int ESP_OK ;
 int SDIO_SLAVE_CHECK (int ,char*,int ) ;
 TYPE_1__* STAILQ_FIRST (int * const) ;
 int STAILQ_REMOVE_HEAD (int * const,int ) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int assert (int) ;
 TYPE_2__ context ;
 int critical_enter_recv () ;
 int critical_exit_recv () ;
 scalar_t__ pdFALSE ;
 int qe ;
 int te ;
 scalar_t__ xSemaphoreTake (int ,int ) ;

esp_err_t sdio_slave_recv(sdio_slave_buf_handle_t* handle_ret, uint8_t **out_addr, size_t *out_len, TickType_t wait)
{
    SDIO_SLAVE_CHECK(handle_ret != ((void*)0), "handle address cannot be 0", ESP_ERR_INVALID_ARG);
    portBASE_TYPE ret = xSemaphoreTake(context.recv_event, wait);
    if (ret == pdFALSE) return ESP_ERR_TIMEOUT;

    buf_stailq_t *const queue = &context.recv_link_list;

    critical_enter_recv();

    buf_desc_t *desc = STAILQ_FIRST(queue);
    STAILQ_REMOVE_HEAD(queue, qe);
    TAILQ_INSERT_TAIL(&context.recv_reg_list, desc, te);
    critical_exit_recv();

    assert(desc != ((void*)0) && desc->owner == 0);
    *handle_ret = (sdio_slave_buf_handle_t)desc;
    if (out_addr) *out_addr = desc->buf;
    if (out_len) *out_len = desc->length;
    return ESP_OK;
}
