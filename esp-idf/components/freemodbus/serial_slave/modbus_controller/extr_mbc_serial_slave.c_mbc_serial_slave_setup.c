
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int mbs_comm; } ;
typedef TYPE_1__ mb_slave_options_t ;
struct TYPE_5__ {scalar_t__ mode; scalar_t__ slave_addr; scalar_t__ port; scalar_t__ parity; } ;
typedef TYPE_2__ mb_slave_comm_info_t ;
typedef int mb_communication_info_t ;
typedef int esp_err_t ;
struct TYPE_6__ {TYPE_1__ opts; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_OK ;
 scalar_t__ MB_ADDRESS_MAX ;
 scalar_t__ MB_MODE_ASCII ;
 scalar_t__ MB_MODE_RTU ;
 int MB_SLAVE_CHECK (int,int ,char*,...) ;
 scalar_t__ UART_NUM_MAX ;
 scalar_t__ UART_PARITY_EVEN ;
 TYPE_3__* mbs_interface_ptr ;

__attribute__((used)) static esp_err_t mbc_serial_slave_setup(void* comm_info)
{
    MB_SLAVE_CHECK((mbs_interface_ptr != ((void*)0)),
                    ESP_ERR_INVALID_STATE,
                    "Slave interface is not correctly initialized.");
    MB_SLAVE_CHECK((comm_info != ((void*)0)), ESP_ERR_INVALID_ARG,
                    "mb wrong communication settings.");
    mb_slave_options_t* mbs_opts = &mbs_interface_ptr->opts;
    mb_slave_comm_info_t* comm_settings = (mb_slave_comm_info_t*)comm_info;
    MB_SLAVE_CHECK(((comm_settings->mode == MB_MODE_RTU) || (comm_settings->mode == MB_MODE_ASCII)),
                ESP_ERR_INVALID_ARG, "mb incorrect mode = (0x%x).",
                (uint32_t)comm_settings->mode);
    MB_SLAVE_CHECK((comm_settings->slave_addr <= MB_ADDRESS_MAX),
                ESP_ERR_INVALID_ARG, "mb wrong slave address = (0x%x).",
                (uint32_t)comm_settings->slave_addr);
    MB_SLAVE_CHECK((comm_settings->port < UART_NUM_MAX), ESP_ERR_INVALID_ARG,
                "mb wrong port to set = (0x%x).", (uint32_t)comm_settings->port);
    MB_SLAVE_CHECK((comm_settings->parity <= UART_PARITY_EVEN), ESP_ERR_INVALID_ARG,
                "mb wrong parity option = (0x%x).", (uint32_t)comm_settings->parity);


    mbs_opts->mbs_comm = *(mb_communication_info_t*)comm_settings;
    return ESP_OK;
}
