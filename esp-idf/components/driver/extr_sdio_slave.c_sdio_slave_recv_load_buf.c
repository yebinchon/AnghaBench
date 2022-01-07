
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ sdio_slave_buf_handle_t ;
typedef int esp_err_t ;
typedef int buf_stailq_t ;
struct TYPE_10__ {int owner; scalar_t__ not_receiving; } ;
typedef TYPE_2__ buf_desc_t ;
struct TYPE_9__ {int start; int restart; scalar_t__ addr; } ;
struct TYPE_12__ {TYPE_1__ slc0_tx_link; } ;
struct TYPE_11__ {TYPE_2__* recv_cur_ret; int recv_reg_list; int recv_link_list; } ;


 int CHECK_HANDLE_IDLE (TYPE_2__*) ;
 int ESP_LOGV (int ,char*) ;
 int ESP_OK ;
 TYPE_7__ SLC ;
 int STAILQ_INSERT_TAIL (int * const,TYPE_2__*,int ) ;
 TYPE_2__* STAILQ_LAST (int * const,int ,int ) ;
 int TAG ;
 int TAILQ_REMOVE (int *,TYPE_2__*,int ) ;
 int assert (scalar_t__) ;
 int buf_desc_s ;
 TYPE_3__ context ;
 int critical_enter_recv () ;
 int critical_exit_recv () ;
 int qe ;
 int recv_size_inc () ;
 int te ;

esp_err_t sdio_slave_recv_load_buf(sdio_slave_buf_handle_t handle)
{
    buf_desc_t *desc = (buf_desc_t*)handle;
    CHECK_HANDLE_IDLE(desc);

    buf_stailq_t *const queue = &context.recv_link_list;

    critical_enter_recv();
    assert(desc->not_receiving);
    TAILQ_REMOVE(&context.recv_reg_list, desc, te);
    desc->owner = 1;
    desc->not_receiving = 0;

    buf_desc_t *const tail = STAILQ_LAST(queue, buf_desc_s, qe);

    STAILQ_INSERT_TAIL(queue, desc, qe);
    if (context.recv_cur_ret == ((void*)0)) {
        context.recv_cur_ret = desc;
    }

    if (tail == ((void*)0)) {

        SLC.slc0_tx_link.addr = (uint32_t)desc;
        SLC.slc0_tx_link.start = 1;
        ESP_LOGV(TAG, "recv_load_buf: start new");
    } else {

        SLC.slc0_tx_link.restart = 1;
        ESP_LOGV(TAG, "recv_load_buf: restart");
    }
    critical_exit_recv();
    recv_size_inc();

    return ESP_OK;
}
