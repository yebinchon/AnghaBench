
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ sdio_slave_buf_handle_t ;
typedef int esp_err_t ;
typedef int buf_desc_t ;
struct TYPE_2__ {int recv_reg_list; } ;


 int CHECK_HANDLE_IDLE (int *) ;
 int ESP_OK ;
 int TAILQ_REMOVE (int *,int *,int ) ;
 TYPE_1__ context ;
 int critical_enter_recv () ;
 int critical_exit_recv () ;
 int free (int *) ;
 int te ;

esp_err_t sdio_slave_recv_unregister_buf(sdio_slave_buf_handle_t handle)
{
    buf_desc_t *desc = (buf_desc_t*)handle;
    CHECK_HANDLE_IDLE(desc);

    critical_enter_recv();
    TAILQ_REMOVE(&context.recv_reg_list, desc, te);
    critical_exit_recv();
    free(desc);
    return ESP_OK;
}
