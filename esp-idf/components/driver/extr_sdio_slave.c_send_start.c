
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int esp_err_t ;
struct TYPE_3__ {int rx_eof; } ;
struct TYPE_4__ {TYPE_1__ slc0_int_clr; } ;


 int ESP_ERR_INVALID_STATE ;
 int ESP_OK ;
 int SDIO_SLAVE_CHECK (int,char*,int ) ;
 TYPE_2__ SLC ;
 scalar_t__ STATE_IDLE ;
 int STATE_WAIT_FOR_START ;
 scalar_t__ send_get_state () ;
 int send_intr_enable () ;
 int send_set_state (int ) ;

__attribute__((used)) static esp_err_t send_start(void)
{
    SDIO_SLAVE_CHECK(send_get_state() == STATE_IDLE,
        "already started", ESP_ERR_INVALID_STATE);
    SLC.slc0_int_clr.rx_eof = 1;
    send_set_state(STATE_WAIT_FOR_START);
    send_intr_enable();
    return ESP_OK;
}
