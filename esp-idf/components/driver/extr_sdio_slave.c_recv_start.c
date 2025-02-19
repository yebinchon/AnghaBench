
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int esp_err_t ;
typedef int buf_desc_t ;
struct TYPE_7__ {int tx_done; } ;
struct TYPE_6__ {int start; scalar_t__ addr; } ;
struct TYPE_5__ {int slc0_tx_rst; } ;
struct TYPE_8__ {TYPE_3__ slc0_int_ena; TYPE_2__ slc0_tx_link; TYPE_1__ conf0; } ;


 int ESP_LOGD (int ,char*) ;
 int ESP_OK ;
 TYPE_4__ SLC ;
 int TAG ;
 int critical_enter_recv () ;
 int critical_exit_recv () ;
 int * recv_get_first_empty_buf () ;

__attribute__((used)) static esp_err_t recv_start(void)
{
    SLC.conf0.slc0_tx_rst = 1;
    SLC.conf0.slc0_tx_rst = 0;

    critical_enter_recv();
    buf_desc_t *desc = recv_get_first_empty_buf();
    if (!desc) {
        ESP_LOGD(TAG, "recv: restart without desc");
        critical_exit_recv();
        return ESP_OK;
    }

    SLC.slc0_tx_link.addr = (uint32_t)desc;
    SLC.slc0_tx_link.start = 1;
    critical_exit_recv();

    SLC.slc0_int_ena.tx_done = 1;
    return ESP_OK;
}
