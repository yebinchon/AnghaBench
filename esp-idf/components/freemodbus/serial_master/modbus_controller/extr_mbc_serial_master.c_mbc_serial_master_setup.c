
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int mbm_comm; } ;
typedef TYPE_1__ mb_master_options_t ;
struct TYPE_5__ {scalar_t__ mode; scalar_t__ port; scalar_t__ parity; } ;
typedef TYPE_2__ mb_master_comm_info_t ;
typedef int mb_communication_info_t ;
typedef int esp_err_t ;
struct TYPE_6__ {TYPE_1__ opts; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_OK ;
 int MB_MASTER_CHECK (int,int ,char*,...) ;
 scalar_t__ MB_MODE_ASCII ;
 scalar_t__ MB_MODE_RTU ;
 scalar_t__ UART_NUM_MAX ;
 scalar_t__ UART_PARITY_EVEN ;
 TYPE_3__* mbm_interface_ptr ;

__attribute__((used)) static esp_err_t mbc_serial_master_setup(void* comm_info)
{
    MB_MASTER_CHECK((mbm_interface_ptr != ((void*)0)),
                    ESP_ERR_INVALID_STATE,
                    "Master interface uninitialized.");
    mb_master_options_t* mbm_opts = &mbm_interface_ptr->opts;

    const mb_master_comm_info_t* comm_info_ptr = (mb_master_comm_info_t*)comm_info;

    MB_MASTER_CHECK(((comm_info_ptr->mode == MB_MODE_RTU) || (comm_info_ptr->mode == MB_MODE_ASCII)),
                ESP_ERR_INVALID_ARG, "mb incorrect mode = (0x%x).",
                (uint32_t)comm_info_ptr->mode);
    MB_MASTER_CHECK((comm_info_ptr->port < UART_NUM_MAX), ESP_ERR_INVALID_ARG,
                "mb wrong port to set = (0x%x).", (uint32_t)comm_info_ptr->port);
    MB_MASTER_CHECK((comm_info_ptr->parity <= UART_PARITY_EVEN), ESP_ERR_INVALID_ARG,
                "mb wrong parity option = (0x%x).", (uint32_t)comm_info_ptr->parity);

    mbm_opts->mbm_comm = *(mb_communication_info_t*)comm_info_ptr;
    return ESP_OK;
}
